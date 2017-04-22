require 'rubygems'
require 'open-uri'
require 'nokogiri'

arg = ARGV[0]
page = Nokogiri::HTML(open(arg))
items = page.css('item')
#titles = items.css('title').text.to_a
#print titles
#TODO: Split string on .mp4 without removing mp4
guids = items.css('guid').text.split(".mp4")
guids.map{|g| g << ".mp4"}

guids.each_with_index{ |g,i| system("wget -O #{i} #{g}") }

# titles, guids.each {|t,g| wget -O t g }


#puts guids[0]
#system("wget #{guids[0]} ")
