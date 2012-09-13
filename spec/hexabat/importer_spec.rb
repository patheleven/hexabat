require 'hexabat/importer'

describe Hexabat::Importer do
  subject                    { described_class.new repository }
  let(:repository)           { 'path11/hexabat' }
  let(:page_request_creator) { stub(:page_request_creator) }
  let(:first_page_importer)  { stub(:first_page_importer) }

  it 'knows what repository to import' do
    subject.repository.should eq 'path11/hexabat'
  end

  it 'imports the first page of open issues' do
    issue_retrieved, issue_count_known = lambda{}, lambda{}
    Hexabat::PageRequestCreator.stub(:new).
      with(repository, &issue_retrieved).
      and_return(page_request_creator)
    Hexabat::FirstPagesImporter.stub(:new).
      with(page_request_creator, &issue_count_known).
      and_return(first_page_importer)
    first_page_importer.should_receive(:import)
    subject.import issue_retrieved: issue_retrieved, issue_count_known: issue_count_known
  end
end

__END__


require 'crafter/gateway/github/importer'

describe Crafter::Gateway::Github::Importer do
  subject { described_class.new(repository, synchronizer, callbacks) }
  let(:repository)      { 'rails/rails' }
  let(:synchronizer)    { mock(:synchronizer, total_pages: 0) }
  let(:callbacks) do
    { page_retrieved: page_retrieved, issue_retrieved: issue_retrieved }
  end
  let(:page_retrieved)  { lambda{|page, issue_count|} }
  let(:issue_retrieved) { lambda{|issue|} }

  it 'imports the first page of open and closed issues' do
    callback = lambda{}
    subject.stub(:first_page_retrieved).and_return(callback)
    Crafter::Gateway::Github::IssuePageImporter.should_receive(:import).with(
      repository: 'rails/rails',
      page: 1,
      state: 'open',
      page_retrieved: callback,
      issue_retrieved: issue_retrieved
    )
    Crafter::Gateway::Github::IssuePageImporter.should_receive(:import).with(
      repository: 'rails/rails',
      page: 1,
      state: 'closed',
      page_retrieved: callback,
      issue_retrieved: issue_retrieved
    )
    subject.import
  end

  it 'imports the remaining pages when the first page is imported' do
    http = stub(:http, response_header: :headers, response: :body)
    query = { page: 1, state: 'closed' }
    wrapped_page_callback = lambda {}
    subject.stub(:page_retrieved).and_return(wrapped_page_callback)
    wrapped_page_callback.should_receive(:call)
    Crafter::Gateway::Github::IssuesPager.stub(:page_range_from).
      with(:headers).and_return(2..2)
    synchronizer.should_receive(:pages_of_issues_in_state).with(closed: 2)
    Crafter::Gateway::Github::IssuePageImporter.should_receive(:import).with(
        repository: 'rails/rails',
        page: 2,
        state: 'closed',
        page_retrieved: wrapped_page_callback,
        issue_retrieved: issue_retrieved
    )
    subject.first_page_retrieved(:closed).call(http, query, 3)
  end

  it 'notifies the sychronizer when a page is imported' do
    http = stub(:http, response_headers: :headers, response: :body)
    query = { page: 2, state: 'closed' }
    synchronizer.should_receive(:<<).with(page: 2, issues: 23)
    subject.page_retrieved.call(http, query, 23)
  end
end

describe Crafter::Gateway::Github::IssuesPager do
  it 'returns 1...1 if there is only one page' do
    headers = { 'NO LINK' => '' }
    subject.page_range_from(headers).should eq 1...1
  end

  it 'returns 2..last_page if there are pages remaning' do
    headers = { 'LINK' => '<https://xxx.com?page=2&per_page=100>; rel="next", <https://xxx.com?page=5&per_page=100>; rel="last"' }
    subject.page_range_from(headers).should eq 2..5
  end
end
