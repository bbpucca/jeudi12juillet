
require 'rubygems'
require 'nokogiri'
require 'open-uri'





def get_the_email_of_a_townhal_from_its_webpage 

    	 
    	doc = Nokogiri::HTML(open("//*https://coinmarketcap.com/all/views/all/"))
 		puts doc.xpath('//*[@id="id-bitcoin"]/td[2]/a').text



end

get_the_email_of_a_townhal_from_its_webpage 
