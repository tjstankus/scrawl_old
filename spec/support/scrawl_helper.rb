module ScrawlHelper

  def markdown
<<MARKDOWN
---
tags: motorcycles longrides
created_at: 2012-11-23 14:33
---

This is a sample paragraph.
MARKDOWN
  end

  def entry
    Scrawl::Entry.new(markdown)
  end

end
