require 'rubygems'
require 'open-uri'
require 'nokogiri'

arg = ARGV[0]
page = Nokogiri::HTML(open(arg))
puts page
