require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
# require_relative "app/models/restaurant"
# Sinatra controller is App.rb

# List restaurants on the view
get ["/", "/restaurants"] do
  # 1. ????
  @restaurants = Restaurant.all

  erb :index
end

get "/example" do
  "Example page"
end


get "/:id" do
  @restaurant = Restaurant.find(params[:id])
 erb :show
end

post '/restaurants' do
  # get the data from the view ???
  # name, address
  name = params[:name]
  address = params[:address]
  # Call restaurant new
  # save the instance
  Restaurant.create(name: name, address: address)

  redirect to('/')
end
emmet