require 'hexabat/page_request_builder'

describe 'Page request builders' do
  let(:repository)         { 'path11/hexabat' }
  let(:response_processor) { mock :response_processor }

  let(:http)     { stub :http }
  let(:get)      { stub(:get).as_null_object }
  let(:endpoint) { 'https://api.github.com/repos/path11/hexabat/issues' }
  let(:query)    { Hash[page: 1, per_page: 100, state: 'open'] }

  before { EM::HttpRequest.stub(:new).with(endpoint).and_return(http) }

  shared_examples_for 'a page request builder' do
    it 'builds an EM::HttpRequest to retrieve the page' do
      subject.for(page: 1, state: 'open').should eq get
    end

    it 'sets up the callback to process the response' do
      page_callback = lambda{}
      get.stub(:callback).and_yield(http)
      response_processor.should_receive(:process).with(http, &page_callback)
      subject.for(page: 1, state: 'open')
    end
  end

  describe Hexabat::PageRequestBuilder::Unauthorized do
    subject { Hexabat::PageRequestBuilder.for repository, response_processor }

    before { http.stub(:get).with(query: query).and_return(get) }

    it_behaves_like 'a page request builder'
  end

  describe Hexabat::PageRequestBuilder::TokenAuthorized do
    subject     { Hexabat::PageRequestBuilder.for repository, response_processor, token: token }
    let(:token) { 'xxxx' }

    before do
      headers = { 'Authorization' => "token #{token}" }
      http.stub(:get).with(query: query, head: headers).and_return(get)
    end

    it_behaves_like 'a page request builder'
  end

end
