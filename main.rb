
require 'rubygems'
require 'rest-graph'
require 'pp'

rg = RestGraph.new( :app_id        => '159074770816908', :secret        => 'bb18c747113798ebd47cb5e14579a154'  )

page_slug = "Coupdevieux"

page =  rg.get(page_slug, {:metadata => true}, 'secret' => true, :expires_in => 3600, :cache => true )

#pp page

p page['name']
p "#{page['likes']}"

page_posts =  rg.get("#{page_slug}/posts", {:metadata => true}, 'secret' => true, :expires_in => 3600, :cache => true )

pp page_posts

