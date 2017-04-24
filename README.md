# PanoptoDownloader
Simple panopto downloader written in Ruby

Requirements:
- ruby
- nokogiri (gem)
- open-uri (gem) 
- wget

Instructions:
- Go to panopto folder
- Click on the drop down arrow next to the RSS symbol (orange box with the white sideways wifi symbol)
- Right click on "Subscribe to RSS" and click on "Copy link address"
- Go to folder where script is located
- Run using: `ruby download.rb "URL"` where `URL` is the copied link address

Output: 
- The files is downloaded into an appropriately named subect folder. Each file is numbered and named for viewing convenience.

Note: 
The files are downloaded using wget. To increase download speed they are all pushed to the background to enable concurrent downloads. On a slow computer this will really affect performance. To avoid this (& download them sequentially) remove `-b` flag in the `system` call on line 22. This will reduce download speed. 

Note2:
An attempt to use aria2 was made. Aria2 is a faster download utility which also enables concurrent downloads. It however does not allow (to the best of my knowledge) renaming of multiple concurrent downloads. 
