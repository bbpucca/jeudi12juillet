require 'rubygems'
require 'nokogiri'
require 'open-uri'


def get_price()
 page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
 crypto = []
 i =0
 news_links = page.css("a[class = price]")
 news_links.each do |link|
 	crypto[i] = link['data-usd']
 	i +=1
 end
 return (crypto)
end

def get_name()
 page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
 crypto = []
 i =0
 news_links = page.css("a[class = price]")
 news_links.each do |link|
 	crypto[i] = link['href']
 	i +=1
 end
 return (crypto)
end


def parse_string(crypto)
	i = 0
	dest = []
	crypto.each do |crypt|
		dest[i] = crypt.split('/')[2]
		i +=1
	end
	return dest
end

def perform
 price = []
 names = []
 price = get_price
 names = parse_string(get_name)
 names.each do |word|
 	puts word
 end
price.each do |word|
 	puts word
 end
 # parse_string(crypto)
end

perform
