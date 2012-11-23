require_relative '../spec_helper'

describe Scrawl::Entry do

  let(:entry) {
    Scrawl::Entry.new(markdown)
  }

  it 'generates filename' do
    expect(entry.filename).to eq('sites/2012/11/23/1433.html')
  end

  it 'parses markdown content' do
    expect(entry.content).to eq("<p>This is a sample paragraph.</p>\n")
  end

  it 'parses tags' do
    ['motorcycles', 'longrides'].each do |tag|
      expect(entry.tags).to include(tag)
    end
  end

  # it 'writes html file'
  it 'writes tags to json data store'
end