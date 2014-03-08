# replace first occurrance of <pubDate> with the current date, so we're accurate.
sed -i '0,/<pubDate>/s|<pubDate>\(.*\)</pubDate>|<pubDate>'"`date -R`"'</pubDate>|' rss.yes.xml
ln -sf index.yes.html index.html
ln -sf rss.yes.xml rss.xml

