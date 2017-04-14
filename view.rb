require_relative 'model'

def welcome_statement
  puts "Welcome to the Farmer's Market finder!"
end

def search_type_response
  puts "Would you like to search for markets by zipcode or borough?"
  response = gets.chomp
  if response.downcase != "borough" && response.downcase != "zipcode"
    puts "Not a valid search criteria. Try again!"
    search_type_response
  else
    response
  end
end



def display(markets)
  markets.each do |market|
    puts "#{market["facilityname"]} at #{market["facilitystreetname"]} #{market["facilitycity"]}, #{market["facilityzipcode"]}"
  end
end

def zipcode_prompt
  puts "Please enter the zipcode"
end

def zipcode_response
  response = gets.chomp
end

def display_market_by_zipcode(markets_zipcode)
  if markets_zipcode.empty?
    puts "Sorry, no markets were found in this zipcode. :/"
  else
    display(markets_zipcode)
  end
end

def borough_prompt
  puts "Please enter the borough"
end

def borough_response
  response = gets.chomp
end

def display_market_by_borough(markets_borough)
  if markets_borough.empty?
    puts "Sorry, no markets were found in this borough. :/"
  else
    display(markets_borough)
  end
end
