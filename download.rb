require 'open-uri'

arg = ARGV[0]
uri = URI.parse(arg)

links = []
uri.open {|f|
  f.each_line {|l| p l}
}


