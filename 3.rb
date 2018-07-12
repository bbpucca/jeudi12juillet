
require 'rubygems'
require 'nokogiri'
require 'open-uri'



def get_all_the_urls_of_val_doise_townhalls

table = []
    	 

    page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
    links = page.css("a[class = lientxt]")
    links.each{|link|
        lien = link['href']
        lien[0] = ''
    table  <<  "http://annuaire-des-mairies.com#{lien}"
}
table
end


def mail

tab = get_all_the_urls_of_val_doise_townhalls

tab.each do |lien| 
	doc = Nokogiri::HTML(open(lien))
 		puts doc.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text


	end


end

mail



