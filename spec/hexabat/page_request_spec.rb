require 'hexabat/page_request'

describe Hexabat::PageRequest do
  let(:repository) { 'path11/hexabat' }
  let(:query)      { Hash[page: 1, state: 'open'] }
  let(:endpoint)   { 'https://api.github.com/repos/path11/hexabat/issues' }

  it 'builds an EM::HttpRequest to retrieve the page' do
    get = stub :get
    http = stub :http
    EM::HttpRequest.stub(:new).with(endpoint).and_return(http)
    http.stub(:get).
      with(query: {page: 1, per_page: 100, state: 'open'}).and_return(get)
    described_class.for(repository, query).should eq get
  end
end
