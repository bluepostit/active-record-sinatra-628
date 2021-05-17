require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  @restaurants = Restaurant.all
  erb :index
end

get '/restaurants/:id' do
  id = params[:id]
  # find one restaurant
  @restaurant = Restaurant.find(id)
  # display it with a view
  erb :restaurant
end

post '/restaurants' do
  # get name, address from user
  name = params[:name]
  address = params[:address]
  # create new Restaurant with the data
  restaurant = Restaurant.new(name: name, address: address)
  # save restaurant
  restaurant.save
  # redirect user to index page
  redirect '/'
end
