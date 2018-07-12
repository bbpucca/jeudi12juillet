
require 'nokogiri'
require 'open-uri'



def x_path_3

    	 
    	doc = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/nesles-la-vallee.html"))
 		puts doc.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text


end

x_path_3