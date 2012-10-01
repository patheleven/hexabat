require 'hexabat/page_response_processor'

describe Hexabat::PageResponseProcessor do
  subject          { described_class.new repository, callback }
  let(:repository) { 'path11/hexabat' }
  let(:callback)   { lambda{} }

  let(:http)    { stub(:http, response: issues, response_header: headers) }
  let(:issues)  { [:issue1, :issue2] }
  let(:headers) { stub(:headers, status: 200) }

  it 'yields every issue in the response to the callback' do
    EM.stub(:next_tick).and_yield
    callback.should_receive(:call).with(:issue1)
    callback.should_receive(:call).with(:issue2)
    subject.process(http)
  end

  it 'can be set with a callback for when the whole page is retrieved' do
    page_range = stub(:page_range)
    Hexabat::PageRange.stub(:from).with(headers).and_return(page_range)
    page_callback = lambda{}
    page_callback.should_receive(:call).with(page_range, issues.count)
    subject.process(http, &page_callback)
  end

  it 'raises an exception if the repository is a fork' do
    headers.stub(:status).and_return(410)
    http.stub(:response).
      and_return('{"message":"Issues are disabled for this repo"}')
    expect { subject.process(http) }.to raise_error Hexabat::ImportError
  end

  it 'raises an exception if the repository is a missing' do
    headers.stub(:status).and_return(404)
    http.stub(:response).and_return('{"message":"Not Found"}')
    expect { subject.process(http) }.to raise_error Hexabat::ImportError
  end

end
