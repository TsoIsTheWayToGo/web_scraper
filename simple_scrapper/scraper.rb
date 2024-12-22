require 'open-uri'
require 'nokogiri'
require 'csv'
require 'json'

def scrapping
  html = URI.open("https://github.com/search?q=Ruby+Web+Scraping&type=repositories")
  doc = Nokogiri::HTML(html)
  items = []
  
  doc.search(".repo-list li").each do |element|
    nane = element.css('a.v-align-middle.text').text.strip
    description = element.css('p.mb-1').text.strip

    items << [name, description]
    
    puts "name: " + name
    puts "descriptiom: " + descriptiom
    puts "_______________________________"
  end
end

scrapping