require 'rubygems'
require 'open-uri'
require 'nokogiri'

arg = ARGV[0]
page = Nokogiri::HTML(open(arg))
dir = page.css('title')[0].text.gsub(/\s+/, "")
system("mkdir #{dir} && cd #{dir}")

items = page.css('item')
#titles = items.css('title').text.to_a
#print titles
#TODO: Split string on .mp4 without removing mp4
guids = items.css('guid').text.split(".mp4")
guids.map{|g| g << ".mp4"}

File.open("urls.txt", "w+") do |f|
  f.puts(guids)
end

#guids.each_with_index{ |g,i| system("wget -O #{i} #{g}") }

# titles, guids.each {|t,g| wget -O t g }
#system("aria2c -i #{urls.txt}")

#puts guids[0]
#system("wget #{guids[0]} ")
