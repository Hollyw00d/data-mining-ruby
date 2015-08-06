require "rubygems"
require "open-uri"
require "nokogiri"

# Shows up first after a ""
puts "Enter a site"


url = gets.chomp

doc = Nokogiri::HTML(open(url))

# If "url" variable has a value...
if url
  # go through all the "p" tags and
  # iterate thru them
  doc.css("p").each do |item|
    # Print out the text of each "p" tag AND
    # "item" refers to the "p" tags you are
    # iterating thru
    puts item.text
  end
end
