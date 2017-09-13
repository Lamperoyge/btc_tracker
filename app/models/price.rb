require 'json'
require 'open-uri'
require 'rest-client'

class Price < ApplicationRecord
  def self.get_data
    blockchain_url = 'https://blockchain.info/ticker'
    btc_data = JSON.parse(RestClient.get(blockchain_url).body)
    price_data = btc_data['EUR']['buy']
    price = Price.new(price: price_data)
    price.save
  end
end
