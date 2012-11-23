require 'metadown'
require 'time'

class Entry
  attr_reader :file_content

  def initialize(file_content)
    @file_content = file_content
    @data = parse
  end

  def content
    @data.output
  end

  def tags
    @data.metadata['tags'].split
  end

  def filename
    t = DateTime.parse(@data.metadata['created_at'])
    "sites/#{t.year}/#{t.month}/#{t.day}/#{t.hour}#{t.minute}.html"
  end

  def parse
    Metadown.render(file_content)
  end
end