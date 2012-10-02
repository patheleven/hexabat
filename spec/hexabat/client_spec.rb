require 'hexabat/client'

describe Hexabat::Client do
  subject          { described_class.new(repository) }
  let(:repository) { 'path11/hexabat' }
  let(:a_callback) { lambda {} }

  it 'can be set with the issue retrieved callback' do
    subject.on issue_retrieved: a_callback
    subject.callbacks[:issue_retrieved].should be a_callback
  end

  it 'can be set with the issue count retrieved callback' do
    subject.on issue_count_known: a_callback
    subject.callbacks[:issue_count_known].should be a_callback
  end

  it 'raises an error if a callback for an unknown event is set' do
    expect { subject.on unknown_event: a_callback}.to raise_error ArgumentError
  end

  it 'ignores attemts to set a callback to nil' do
    subject.callbacks[:error].should_not be nil
    subject.on error: nil
    subject.callbacks[:error].should_not be nil
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
    importer = mock(:importer)
    EM.stub(:run).and_yield
    Hexabat::Importer.stub(:new).and_return(importer)
    importer.should_receive(:import)
    subject.on issue_retrieved: :callback1
    subject.on issue_count_known: :callback2
    subject.import
  end
end
