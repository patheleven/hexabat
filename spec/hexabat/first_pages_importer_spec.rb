require 'hexabat/first_pages_importer'

describe Hexabat::FirstPagesImporter do
  subject                 { described_class.new page_request, &issue_count_known }
  let(:page_request)      { stub :page_request_creator }
  let(:issue_count_known) { lambda{|count|} }

  it 'imports the first page of open and closed issues' do
    multi_request = stub(:multi_request)
    EM::MultiRequest.stub(:new).and_return(multi_request)

    get_open   = stub :get_open
    get_closed = stub :get_closed

    page_request.stub(:for).with(page: 1, state: 'open').and_return(get_open)
    page_request.stub(:for).with(page: 1, state: 'closed').and_return(get_closed)

    multi_request.should_receive(:add).with(:open, get_open)
    multi_request.should_receive(:add).with(:closed, get_closed)
    multi_request.should_receive(:callback)
    multi_request.should_receive(:errback)

    subject.import
  end

end
