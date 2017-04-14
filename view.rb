require_relative 'model'

def display(markets)
  markets.each do |market|
    puts "#{market["facilityname"]} at #{market["facilitystreetname"]} #{market["facilitycity"]}, #{market["facilityzipcode"]}"
  end
end
