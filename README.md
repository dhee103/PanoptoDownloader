# PanoptoDownloader
Simple panopto downloader written in Ruby

Requirements:
-ruby
-nokogiri (gem)
-open-uri (gem) 

Instructions:
-go to panopto folder
-click on the drop down arrow next to the RSS symbol (orange box with the white sideways wifi symbol)
-right click on "Subscribe to RSS" and click on "Copy link address"
-go to folder where script is located
-run using: ruby download.rb "URL" where URL is the copied link address

Output: 
-The files will be downloaded into an appropriately named folderand be numbered and named for viewing convenience

Note: 
The file are downloaded using wget and are pushed to the background. On a slow computer this will really affect performance. To avoid this (& download them sequentially) remove "-b" flag in the system call on line 22. This will reduce download speed. 

Note2:
Another attempt was made to use aria2 which is a faster downloader which also enables concurrent downloads. They however do not allow (to the best of my knowledge) renaming of multiple downconcurrent downloads. 
