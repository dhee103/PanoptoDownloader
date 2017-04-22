require 'rubygems'
require 'open-uri'
require 'nokogiri'

arg = ARGV[0]
page = Nokogiri::HTML(open(arg))
dir = page.css('title')[0].text.gsub(/\s+/, "")
system("mkdir #{dir}")

$count = 0  
def counter()
  return $count+=1
end

titles = []
page.css('item').css('title').each do |t| 
  titles.push("#{dir}/#{counter()}.#{t.text.gsub(/\s+/, "")}")
end

page.css('item').css('guid').each_with_index do |g,i|
  puts "Downloading #{titles[i]}"
  system("wget -q -b -O #{titles[i]} #{g.text}")
end

# alternative method using aria2
#File.open("urls.txt", "w+") do |f|
#  f.puts(guids)
#end

#system("aria2c -c -x 10 -d #{dir} -i urls.txt")

#puts guids[0]
#system("wget #{guids[0]} ")


