require 'nokogiri'
require 'open-uri'
require 'pry-byebug'

serialized_file = open('fraise.html').read
parsed_html = Nokogiri::HTML(serialized_file)

binding.pry
p parsed_html