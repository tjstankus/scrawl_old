require_relative '../spec_helper'

describe Entry do

  let(:markdown) {
<<MARKDOWN
---
tags: motorcycles longrides
created_at: 2012-11-23 14:33
---

This is a sample paragraph.
MARKDOWN
  }

  let(:entry) {
    Entry.new(markdown)
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

  # TODO: Should these be in separate objects? HtmlWriter, TagWriter, etc.?
  # it 'writes html file'
  # it 'writes tags to json data store'
end