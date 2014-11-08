#!/usr/bin/env ruby
# Sample client for Uber API gem

require 'uber'
require 'ap'

CFG_CLIENT_ID = '-banana'
CFG_SERVER_TOKEN = 'z1FXM8272irpotatO'
CFG_SECRET = 'B6fzcg4WminionsehnPUr075'


client = UberCar::Client.new({ app_user_key: CFG_CLIENT_ID, app_user_secret: CFG_SECRET, app_server_token: CFG_SERVER_TOKEN, api_host: 'https://api.uber.com/v1' })

result = client.show_products(:latitude => '51.512555', :longitude => '-0.127716')
ap result

result = client.estimate_price(:start_latitude => '51.5107835', :start_longitude => '-0.1167915', :end_latitude => '51.5024782', :end_longitude => '-0.1003484')
ap result

result = client.estimate_time(:start_latitude => '51.512555', :start_longitude => '-0.127716')
# estimate_time can be used with :customer_uuid and product_id for further customization
ap result

result = client.promotions(:start_latitude => '51.5107835', :start_longitude => '-0.1167915', :end_latitude => '51.5024782', :end_longitude => '-0.1003484')
ap result

# returns sign up URL. You can fill up all the fields ( check Uber API documentation )
result = client.sign_up()
ap result