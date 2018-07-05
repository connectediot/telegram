require 'rest-client'
require 'nokogiri'
require 'json'

token = ENV["telegram_token"]
url = "https://api.telegram.org/bot#{token}/getUpdates"
res = RestClient.get(url)
doc = JSON.parse(res)
user_id = res_json['result'][0]['message']['from']['id']
user_id = 607710831
msg = "정말가나?"
msg_url = URI.encode("https://api.telegram.org/bot#{token}/sendmessage?chat_id=#{user_id}&text=#{msg}")
RestClient.get(msg_url)
