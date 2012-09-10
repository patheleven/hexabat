require 'hexabat/issue_page_importer'

describe Hexabat::IssuePageImporter do
  subject do
    described_class.new(
      repository: 'path11/hexabat',
      page: 1,
      state: 'open',
      assignee: '*',
      issue_retrieved: issue_retrieved
    )
  end
  let(:issue_retrieved) { lambda{|issue|} }
  let(:endpoint)        { 'https://api.github.com/repos/path11/hexabat/issues' }

  it 'can build an importer and start the import' do
    params = { repository: 'rails/rails', page: 1 }
    importer = stub(:importer)
    importer.should_receive(:import)
    described_class.stub(:new).with(params).and_return(importer)
    described_class.import(params)
  end

  it 'knows the endpoint to query' do
    subject.endpoint.should eq endpoint
  end

  it 'issues the request that imports the page' do
    http, get = stub(:http), mock(:get)
    EM::HttpRequest.stub(:new).with(endpoint).and_return(http)
    http.stub(:get).
      with(query: {page: 1, per_page: 100, state: 'open', assignee: '*'}).
      and_return(get)
    get.should_receive(:callback)
    get.should_receive(:errback)
    subject.import
  end

  it "parses the issues' JSON and yields them to the issue retrieved callback" do
    http = stub(:http, response: :json)
    Yajl::Parser.stub(:parse).with(:json).and_return([:issue1, :issue2])
    issue_retrieved.should_receive(:call).with(:issue1)
    issue_retrieved.should_receive(:call).with(:issue2)
    EM.should_receive(:stop)
    subject.page_retrieved.call(http)
  end

end

__END__


require 'crafter/gateway/github/issue_page_importer'

describe Crafter::Gateway::Github::IssuePageImporter do
  subject do
    described_class.new(
      repository: 'rails/rails',
      page: 1,
      state: 'open',
      assignee: '*',
      issue_retrieved: issue_retrieved,
      page_retrieved: page_retrieved
    )
  end
  let(:issue_retrieved) { lambda{|issue|} }
  let(:page_retrieved)  { lambda{|http, query, issue_count|} }
  let(:endpoint)        { 'https://api.github.com/repos/rails/rails/issues' }

  it 'can build an importer and start the import' do
    params = { repository: 'rails/rails', page: 1 }
    importer = stub(:importer)
    importer.should_receive(:import)
    described_class.stub(:new).with(params).and_return(importer)
    described_class.import(params)
  end

  it 'knows the endpoint to query' do
    subject.endpoint.should eq endpoint
  end

  it 'issues the request that imports the page' do
    http, get = stub(:http), mock(:get)
    EM::HttpRequest.stub(:new).with(endpoint).and_return(http)
    http.stub(:get).
      with(query: {page: 1, per_page: 100, state: 'open', assignee: '*'}).
      and_return(get)
    get.should_receive(:callback)
    get.should_receive(:errback)
    subject.import
  end

  it 'calls the page retrieved callback' do
    http = stub(:http, response: :json)
    query = { page: 1, per_page: 100, state: 'open', assignee: '*' }
    Yajl::Parser.stub(:parse).and_return([:issue1, :issue2])
    page_retrieved.should_receive(:call).with(http, query, 2)
    subject.page_retrieved.call(http)
  end

  it "parses the issues' JSON and yields them to the issue retrieved callback" do
    http = stub(:http, response: :json)
    Yajl::Parser.stub(:parse).with(:json).and_return([:issue1, :issue2])
    issue_retrieved.should_receive(:call).with(:issue1)
    issue_retrieved.should_receive(:call).with(:issue2)
    subject.page_retrieved.call(http)
  end

end
