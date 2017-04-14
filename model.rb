require 'json'
require 'open-uri'



file = open('https://data.cityofnewyork.us/resource/cw3p-q2v6.json').read

$parsed_markets = JSON.parse(file)

def search_by_borough(borough, file)
  markets_by_borough = []
  file.each do |market|
    if market["facilitycity"] == borough.capitalize
      markets_by_borough << market
    end
  end
  markets_by_borough
end

def search_by_zipcode(zipcode, file)
  markets_by_zipcode = []
  file.each do |market|
    if market["facilityzipcode"] == zipcode
      markets_by_zipcode << market
    end
  end
  markets_by_zipcode
end
