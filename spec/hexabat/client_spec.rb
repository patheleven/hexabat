require 'hexabat/client'

describe Hexabat::Client do
  subject          { described_class.new(repository) }
  let(:repository) { 'path11/hexabat' }
  let(:a_callback) { lambda {} }

  it 'knows the github repository that has to be imported' do
    subject.repository.should eq 'path11/hexabat'
  end

  it 'can be set with the issue retrieved callback' do
    subject.on issue_retrieved: a_callback
    subject.callbacks[:issue_retrieved].should be a_callback
  end

  xit 'can be set with the issue count retrieved callback' do
    subject.on issue_count_known: a_callback
    subject.callbacks[:issue_count_known].should be a_callback
  end

  xit 'can be set with the page retrieved callback' do
    subject.on page_retrieved: a_callback
    subject.callbacks[:page_retrieved].should be a_callback
  end

  xit 'can be set with the page count known callback' do
    subject.on page_count_known: a_callback
    subject.callbacks[:page_count_known].should be a_callback
  end

  it 'raises an error if a callback for an unknown event is set' do
    expect { subject.on unknown_event: a_callback}.to raise_error ArgumentError
  end

  it 'starts Event Machine if it is not running' do
    EM.stub(:reactor_running?).and_return(false)
    EM.should_receive(:run)
    subject.stub(:start_importing)
    subject.import
  end

  it 'does not start Event Machine if it is already running' do
    EM.stub(:reactor_running?).and_return(true)
    EM.should_not_receive(:run)
    subject.stub(:start_importing)
    subject.import
  end

  it 'imports all the issues from the repository' do
    importer = stub(:importer)
    EM.stub(:reactor_running?).and_return(true)
    Hexabat::Importer.stub(:new).
      with(repository, Hash[issue_retrieved: :issue_retrieved_callback]).
      and_return(importer)
    importer.should_receive(:import)
    subject.on issue_retrieved: :issue_retrieved_callback
    subject.import
  end
end
