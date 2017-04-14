require 'json'
require 'open-uri'



file = open('https://data.cityofnewyork.us/resource/cw3p-q2v6.json').read

parsed_markets = JSON.parse(file)

def search_by_borough(borough)
  markets_by_borough = []
  parsed_markets.each do |market|
    if market["facilitycity"].downcase == borough.downcase
      markets_by_borough << market
    end
  end
  markets_by_borough
end
