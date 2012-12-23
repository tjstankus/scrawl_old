require_relative '../spec_helper'

describe Scrawl::Entry do

  it 'generates filename' do
    expect(entry.filename).to eq('sites/2012/11/23/1433.html')
    expect(entry.filename).to eq('site/2012/11/23/1433.html')
  end

  it 'parses markdown content' do
    expect(entry.content).to eq("<p>This is a sample paragraph.</p>\n")
  end

  it 'parses tags' do
    ['motorcycles', 'longrides'].each do |tag|
      expect(entry.tags).to include(tag)
    end
  end

  it 'parses timestamp' do
    dt = DateTime.parse('2012-11-23 14:33')
    expect(entry.created_at).to eq(dt)
  end

  # it 'writes html file'
  it 'writes tags to data store'
end

