require 'hexabat/page_request_creator'

describe Hexabat::PageRequestCreator do
  subject          { described_class.new repository, &callback }
  let(:repository) { 'path11/hexabat' }
  let(:callback)   { lambda{} }

  let(:http)     { stub(:http, response: :json) }
  let(:get)      { stub(:get).as_null_object }
  let(:endpoint) { 'https://api.github.com/repos/path11/hexabat/issues' }

  before do
    EM::HttpRequest.stub(:new).with(endpoint).and_return(http)
    http.stub(:get).with(query: {page: 1, per_page: 100, state: 'open'}).and_return(get)
  end

  it 'builds an EM::HttpRequest to retrieve the page' do
    subject.for(page: 1, state: 'open').should eq get
  end

  it 'setups the callback for the request' do
    get.should_receive(:callback)
    subject.for(page: 1, state: 'open')
  end

  it 'setups the errback for the request' do
    get.should_receive(:errback)
    subject.for(page: 1, state: 'open')
  end

  it 'yields every issue in the page to the callback' do
    EM.stub(:next_tick).and_yield
    Yajl::Parser.stub(:parse).with(:json).and_return([:issue1, :issue2])
    callback.should_receive(:call).with(:issue1)
    callback.should_receive(:call).with(:issue2)
    subject.page_retrieved.call(http)
  end
end
