
-- http://ikiwiki.info/convert/ (none are for txp, but maybe good examples)

-- http://www.textpattern.net/wiki/index.php?title=Database_Schema_Reference

-- these are all the articles and fields that matter to me:
select
	ID,
	Posted, LastMod,
	Title, url_title,
	Image,
	Section,
	Keywords,
	custom_2 as quote_attribution,
	Body, Excerpt
from txp_textpattern
where
	Status = 4
	and Section <> 'Postmaster'
order by ID
;

-- need to handle each section: blog, quotes, reference, (tag), preview

-- need to get comments, files, forms, images, links?, pages

-- need to browse through settings and plugins

