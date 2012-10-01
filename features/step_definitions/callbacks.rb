Given /^there is a single open issue on "(.*?)"$/ do |repository|
  stub_request(:get, "https://api.github.com/repos/#{repository}/issues?page=1&per_page=100&state=open").
    to_return(:status => 200, :body => SINGLE_OPEN_ISSUE, :headers => {})
  stub_request(:get, "https://api.github.com/repos/#{repository}/issues?page=1&per_page=100&state=closed").
    to_return(:status => 200, :body => '[]', :headers => {})
end

Given /^there are 101 open issues and 300 closed issues on "(.*?)"$/ do |repository|
  #open issues page 1
  link = '<https://api.github.com/repos/path11/hexabat/issues?page=2&per_page=100>; rel="next", <https://api.github.com/repos/path11/hexabat/issues?page=2&per_page=100>; rel="last"'
  stub_request(:get, "https://api.github.com/repos/#{repository}/issues?page=1&per_page=100&state=open").
    to_return(:status => 200, :body => A_100_OPEN_ISSUES, :headers => {'Link' => link})

  #open issues page 2
  link = '<https://api.github.com/repos/path11/hexabat/issues?page=1&per_page=100>; rel="last", <https://api.github.com/repos/path11/hexabat/issues?page=1&per_page=100>; rel="first", <https://api.github.com/repos/path11/hexabat/issues?page=1&per_page=100>; rel="prev"'
  stub_request(:get, "https://api.github.com/repos/#{repository}/issues?page=2&per_page=100&state=open").
    to_return(:status => 200, :body => SINGLE_OPEN_ISSUE, :headers => {'Link' => link})

  #closed issues page 1
  link = '<https://api.github.com/repos/path11/hexabat/issues?page=2&per_page=100&state=closed>; rel="next", <https://api.github.com/repos/path11/hexabat/issues?page=3&per_page=100&state=closed>; rel="last"'
  stub_request(:get, "https://api.github.com/repos/#{repository}/issues?page=1&per_page=100&state=closed").
    to_return(:status => 200, :body => CLOSED_ISSUES_PAGE_1, :headers => {'Link' => link})

  #closed issues page 2
  link = '<https://api.github.com/repos/path11/hexabat/issues?page=3&per_page=100&state=closed>; rel="next", <https://api.github.com/repos/path11/hexabat/issues?page=3&per_page=100&state=closed>; rel="last", <https://api.github.com/repos/path11/hexabat/issues?page=1&per_page=100&state=closed>; rel="first", <https://api.github.com/repos/path11/hexabat/issues?page=1&per_page=100&state=closed>; rel="prev"'
  stub_request(:get, "https://api.github.com/repos/#{repository}/issues?page=2&per_page=100&state=closed").
    to_return(:status => 200, :body => CLOSED_ISSUES_PAGE_2, :headers => {'Link' => link})

  #closed issues page 3
  link = '<https://api.github.com/repos/path11/hexabat/issues?page=1&per_page=100&state=closed>; rel="last", <https://api.github.com/repos/path11/hexabat/issues?page=1&per_page=100&state=closed>; rel="first", <https://api.github.com/repos/path11/hexabat/issues?page=2&per_page=100&state=closed>; rel="prev"'
  stub_request(:get, "https://api.github.com/repos/#{repository}/issues?page=3&per_page=100&state=closed").
    to_return(:status => 200, :body => CLOSED_ISSUES_PAGE_3, :headers => {'Link' => link})
end

Given /^the repository "(.*?)" doesn't exist$/ do |repository|
  stub_request(:get, "https://api.github.com/repos/#{repository}/issues?page=1&per_page=100&state=closed").
    to_return(:status => 404, :body => '{"message": "Not found"}', :headers => {})
  stub_request(:get, "https://api.github.com/repos/#{repository}/issues?page=1&per_page=100&state=open").
    to_return(:status => 404, :body => '{"message": "Not found"}', :headers => {})
end

When /^I set up an issue retrieved callback$/ do
  setup_callbacks
end

When /^I setup the issue count known callback$/ do
  setup_callbacks
end

When /^I import the "(.*?)" repository$/ do |repository|
  EM.run do
    EM.add_timer(TIMEOUT){ EM.stop }
    Hexabat.import repository
  end
end

When /^I setup the errback$/ do
  setup_errback
end

Then /^the callback is called with the issue in that repository$/ do
  @retrieved_issues.count.should be 1
end

Then /^the callback is called with the number of issues of the repository$/ do
  @issue_count.should eq 401
  @retrieved_issues.count.should eq @issue_count
end

Then /^the errback is called with the error message$/ do
  @error_repository = 'path11/rails'
  @error_status = '404'
  @error_message = 'Not found'
end
