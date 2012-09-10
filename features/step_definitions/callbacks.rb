Given /^I set up an issue retrieved callback$/ do
  @retrieved_issues = []
  @issue_retrieved = ->(issue) { @retrieved_issues << issue }
end

When /^I import the "(.*?)" repository$/ do |repository|
  @hexabat = Hexabat::Client.new(repository)
  @hexabat.on issue_retrieved: @issue_retrieved
  @hexabat.import
end

Then /^the callback is called with every issue in that repository$/ do
  @retrieved_issues.count.should be 1
  #fail 'fake the requests and return a few pages of open and closed issues!!'
end
