require 'hexabat/importer'

describe Hexabat::Importer do
  subject               { described_class.new counter, request_creator }
  let(:counter)         { stub :issue_counter }
  let(:request_creator) { stub :page_request_creator }

  let(:issue_count)     { stub :issue_count }

  it 'imports the first page of open and closed issues' do
    request_creator.should_receive(:for).with(page: 1, state: 'open')
    request_creator.should_receive(:for).with(page: 1, state: 'closed')
    subject.import
  end

  it 'counts issues and reports pages in the repository' do
    page_range = stub(:page_range, multiple_pages?: false)
    counter.should_receive(:counted).with(:first, :open, page_range, issue_count)
    subject.first_page_retrieved(:open).call(page_range, issue_count)
  end

  it 'imports the last page of issues' do
    page_range = stub(:page_range, multiple_pages?: true, last: 4)
    counter.should_receive(:counted).with(:first, :open, page_range, issue_count)
    request_creator.should_receive(:for).with(page: 4, state: 'open')
    subject.first_page_retrieved(:open).call(page_range, issue_count)
  end

  it 'counts issues and imports the remaining pages' do
    page_range = stub(:page_range, middle: 2..3)
    counter.should_receive(:counted).with(:last, :open, page_range, issue_count)
    request_creator.should_receive(:for).with(page: 2, state: 'open')
    request_creator.should_receive(:for).with(page: 3, state: 'open')
    subject.last_page_retrieved(:open).call(page_range, issue_count)
  end
end
