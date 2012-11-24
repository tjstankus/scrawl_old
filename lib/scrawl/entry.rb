require 'metadown'
require 'time'

module Scrawl
class Entry
  attr_reader :file_content

  def initialize(file_content)
    @file_content = file_content
    @data = parse
  end

  def content
    @data.output
  end

  def created_at
    @created_at ||= DateTime.parse(@data.metadata['created_at'])
  end

  def tags
    @tags ||= @data.metadata['tags'].split
  end

  def filename
    t = created_at
    "sites/#{t.year}/#{t.month}/#{t.day}/#{t.hour}#{t.minute}.html"
  end

  def parse
    Metadown.render(file_content)
  end
end
end
