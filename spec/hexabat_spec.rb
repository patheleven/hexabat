require 'hexabat'

describe Hexabat do
  let(:issue_retrieved)   { lambda {|issue|} }
  let(:issue_count_known) { lambda {|count|} }

  before do
    Hexabat.on_issue_retrieved   &issue_retrieved
    Hexabat.on_issue_count_known &issue_count_known
  end

  it 'imports the repository'  do
    client = mock
    Hexabat::Client.stub(:new).with('path11/hexabat').and_return(client)
    client.should_receive(:on).with(issue_retrieved: issue_retrieved)
    client.should_receive(:on).with(issue_count_known: issue_count_known)
    client.should_receive(:import)
    Hexabat.import 'path11/hexabat'
  end
end
