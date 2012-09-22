require 'hexabat/issue_count'

describe Hexabat::IssueCount do
  subject                 { described_class.new &issue_count_known }
  let(:issue_count_known) { lambda{|count| @count = count} }

  it 'keeps track of the notified page ranges' do
    subject.page_ranges.should eq Hash[open: nil, closed: nil]
  end

  it 'keeps track of the notified issue counts' do
    initial_count = {
      open:   { first: nil, last: nil },
      closed: { first: nil, last: nil }
    }
    subject.issue_counts.should eq initial_count
  end

  it 'can be notified with issue counts and page ranges' do
    page_range = stub(:page_range, multiple_pages?: true)
    subject.counted :first, :open, page_range, 10
    subject.page_ranges.should eq Hash[open: page_range, closed: nil]
    expected_count = {open: {first: 10, last: nil}, closed: {first: nil, last: nil}}
    subject.issue_counts.should eq expected_count
  end

  it 'updates issue counts if there is only one page' do
    page_range = stub(:page_range, multiple_pages?: false, middle_page_count: 0)
    subject.counted :first, :open, page_range, 2
    expected_count = {open: {first: 2, last: 0}, closed: {first: nil, last: nil}}
    subject.issue_counts.should eq expected_count
  end

  it 'calls the provided callback when done counting' do
    open_page_range   = stub(:page_range, multiple_pages?: false, middle_page_count: 0)
    closed_page_range = stub(:page_range, multiple_pages?: true, middle_page_count: 2)
    subject.counted :first, :open, open_page_range, 15
    subject.counted :first, :closed, closed_page_range, 100
    subject.counted :last, :closed, closed_page_range,  10
    @count.should be 325
  end
end
