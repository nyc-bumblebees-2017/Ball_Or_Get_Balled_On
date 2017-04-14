require_relative 'model'
require_relative 'view'

welcome_statement

response = search_type_response

case response
when "all"
  display($parsed_markets)
when "display all"
  display($parsed_markets)
when "zipcode"
  zipcode_prompt
  response = zipcode_response
  markets_zipcode = search_by_zipcode(response, $parsed_markets)
  display_market_by_zipcode(markets_zipcode)

when "borough"
  borough_prompt
  response = borough_response
  markets_borough = search_by_borough(response, $parsed_markets)
  display_market_by_borough(markets_borough)
end
