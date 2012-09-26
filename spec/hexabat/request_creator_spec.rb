require 'hexabat/request_creator'

describe Hexabat::RequestCreator do
  subject          { described_class.new repository, &callback }
  let(:repository) { 'path11/hexabat' }
  let(:callback)   { lambda{} }

  let(:http)     { stub(:http, response: :json, response_header: headers) }
  let(:get)      { stub(:get).as_null_object }
  let(:headers)  { stub(:headers, status: 200) }
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

  it 'yields every issue in the page to the callback' do
    EM.stub(:next_tick).and_yield
    Yajl::Parser.stub(:parse).with(:json).and_return([:issue1, :issue2])
    callback.should_receive(:call).with(:issue1)
    callback.should_receive(:call).with(:issue2)
    subject.page_retrieved.call(http)
  end

  it 'can be set with a callback for when the whole page is retrieved' do
    page_range = stub(:page_range)
    Hexabat::PageRange.stub(:from).with(headers).and_return(page_range)
    issues = [:issue1, :issue2]
    Yajl::Parser.stub(:parse).with(:json).and_return(issues)
    page_callback = mock(:page_callback)
    page_callback.should_receive(:call).with(page_range, issues.count)
    subject.page_retrieved(page_callback).call(http)
  end

  it 'raises an exception if the repository is a fork' do
    headers.stub(:status).and_return(410)
    http.stub(:response).and_return('{"message":"Issues are disabled for this repo"}')
    expect { subject.page_retrieved.call(http) }.to raise_error Hexabat::ImportError
  end

  it 'raises an exception if the repository is a missing' do
    headers.stub(:status).and_return(404)
    http.stub(:response).and_return('{"message":"Not Found"}')
    expect { subject.page_retrieved.call(http) }.to raise_error Hexabat::ImportError
  end
end
