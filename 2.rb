
require 'rubygems'
require 'nokogiri'
require 'open-uri'



def get_all_the_urls_of_val_doise_townhalls

    	 

    page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
    links = page.css("a[class = lientxt]")
    links.each{|link|
        lien = link['href']
        lien[0] = ''
    puts  "http://annuaire-des-mairies.com#{lien}"}

end


get_all_the_urls_of_val_doise_townhalls


