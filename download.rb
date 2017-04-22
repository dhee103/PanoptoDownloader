require 'rubygems'
require 'open-uri'
require 'nokogiri'

arg = ARGV[0]
page = Nokogiri::HTML(open(arg))
items = page.css('item')
titles = items.css('title').text.split("\n")
guids = items.css('guid').text.split("\n")
print titles
print titles.class
