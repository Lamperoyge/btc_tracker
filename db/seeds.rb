# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'
require 'rest-client'
blockchain_url = 'https://blockchain.info/ticker'
btc_data = JSON.parse(RestClient.get(blockchain_url).body)
price_data = btc_data['EUR']['buy']

p btc_data
