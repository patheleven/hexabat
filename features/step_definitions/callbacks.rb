Given /^there is a single open issue on "(.*?)"$/ do |repository|
  stub_request(:get, "https://api.github.com/repos/#{repository}/issues?page=1&per_page=100&state=open").
    to_return(:status => 200, :body => ISSUES, :headers => {})
end

When /^I set up an issue retrieved callback$/ do
  @retrieved_issues = []
  @issue_retrieved = ->(issue) { @retrieved_issues << issue }
end

When /^I setup the issue count known callback$/ do
  @issue_count = 0
  @issue_count_known = ->(issue_count) { @issue_count = count }
end

When /^I import the "(.*?)" repository$/ do |repository|
  @hexabat = Hexabat::Client.new(Hexabat::Importer.new(repository))
  @hexabat.on issue_retrieved:   @issue_retrieved   if @issue_retrieved
  @hexabat.on issue_count_known: @issue_count_known if @issue_count_known
  @hexabat.import
end

Then /^the callback is called with the issue in that repository$/ do
  @retrieved_issues.count.should be 1
end

Then /^the callback is called with the number of issues of the repository$/ do
  @issue_count.should be 101
end
