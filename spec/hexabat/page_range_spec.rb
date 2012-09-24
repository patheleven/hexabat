require 'hexabat/page_range'

describe Hexabat::PageRange do
  context 'building page ranges from headers' do
    it 'creates a SinglePageRange if there is only one page' do
      headers = { 'NO LINK' => '' }
      Hexabat::SinglePageRange.should_receive(:new).with(1)
      described_class.from(headers)
    end

    it 'creates a MultiplePageRange if there is more than one page' do
      headers = { 'LINK' => '<https://xxx.com?page=2&per_page=100>; rel="next", <https://xxx.com?page=5&per_page=100>; rel="last"' }
      Hexabat::MultiplePageRange.should_receive(:new).with(1, 5)
      described_class.from(headers)
    end
  end
end

describe Hexabat::PageRange::LinkHeader do
  it 'extracts the last page from the LINK header' do
    link = '<https://xxx.com?page=2&per_page=100>; rel="next", <https://xxx.com?page=8&per_page=100>; rel="last"'
    described_class.new(link).last.should be 8
  end

  it 'calculates the last page from the LINK header when last is present' do
    link = '<https://xxx.com?page=1&per_page=100&state=closed>; rel="last", <https://xxx.com?page=1&per_page=100&state=closed>; rel="first", <https://xxx.com?page=73&per_page=100&state=closed>; rel="prev"'
    described_class.new(link).last.should be 74
  end

  it 'calculates the last page from the LINK header when last is missing' do
    link = '<https://xxx.com?page=1&per_page=100&state=closed>; rel="first", <https://xxx.com?page=73&per_page=100&state=closed>; rel="prev"'
    described_class.new(link).last.should be 74
  end
end

describe Hexabat::MultiplePageRange do
  it 'knows the first page' do
   described_class.new(3, 5).first.should be 3
  end

  it 'knows the page count' do
    described_class.new(1, 2).page_count.should be 2
    described_class.new(5, 9).page_count.should be 5
  end

  it 'knows the last page' do
   described_class.new(1, 5).last.should be 5
  end

  it 'knows the middle pages' do
    described_class.new(1, 2).middle.should eq 0...0
    described_class.new(1, 9).middle.should eq 2..8
  end

  it 'knows the middle pages count' do
    described_class.new(1, 2).middle_page_count.should eq 0
    described_class.new(1, 9).middle_page_count.should eq 7
  end

  it 'knows if it has more than one page' do
    described_class.new(1, 2).multiple_pages?.should be_true
    described_class.new(1, 5).multiple_pages?.should be_true
  end
end

describe Hexabat::SinglePageRange do
  subject    { described_class.new page }
  let(:page) { 2 }

  it 'knows the first page' do
   subject.first.should be 2
  end

  it 'knows the page count' do
    subject.page_count.should be 1
  end

  it 'knows the last page' do
    subject.last.should be 2
  end

  it 'knows the middle pages' do
    subject.middle.should eq 0...0
  end

  it 'knows the middle pages count' do
    subject.middle_page_count.should eq 0
  end

  it 'knows if it has more than one page' do
    subject.multiple_pages?.should be_false
  end
end

describe Hexabat::EmptyPageRange do
  subject    { described_class.new }

  it 'knows the first page' do
   subject.first.should be 0
  end

  it 'knows the page count' do
    subject.page_count.should be 0
  end

  it 'knows the last page' do
    subject.last.should be 0
  end

  it 'knows the middle pages' do
    subject.middle.should eq 0...0
  end

  it 'knows the middle pages count' do
    subject.middle_page_count.should eq 0
  end

  it 'knows if it has more than one page' do
    subject.multiple_pages?.should be_false
  end
end
