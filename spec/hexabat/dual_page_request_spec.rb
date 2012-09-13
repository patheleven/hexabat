require 'hexabat/dual_page_request'

describe Hexabat::DualPageRequest do
  subject               { described_class.new request_creator, &callback }
  let(:request_creator) { stub :request_creator }
  let(:callback)        { lambda{} }
  let(:open_page)       { 2 }
  let(:closed_page)     { 11 }

  it 'issues requests to retrieve both pages' do
    multi_request = mock(:multi_request)
    EM::MultiRequest.stub(:new).and_return(multi_request)
    multi_request.should_receive(:add).with(:open,   stub_open_page_request)
    multi_request.should_receive(:add).with(:closed, stub_closed_page_request)
    multi_request.should_receive(:callback)
    multi_request.should_receive(:errback)
    subject.get open_page, closed_page
  end

  def stub_open_page_request
    stub(:get_open).tap do |get_open|
      request_creator.stub(:for).with(page: open_page, state: 'open').
        and_return(get_open)
    end
  end

  def stub_closed_page_request
    stub(:get_closed).tap do |get_closed|
      request_creator.stub(:for).with(page: closed_page, state: 'closed').
        and_return(get_closed)
    end
  end
end
