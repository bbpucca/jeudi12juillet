#méthode qui récupere toutes les urls des villes du Val d'Oise
def get_all_the_urls_of_val_doise_townhalls

page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
news_links = page.css("a[class = lientxt]")
news_links.each{|link| puts link['href'] .sub('.', 'http://annuaire-des-mairies.com')}
end

puts get_all_the_urls_of_val_doise_townhalls


