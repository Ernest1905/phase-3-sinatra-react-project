# require 'sinatra'
# require 'json'
# require 'sinatra/activerecord'
# require_relative './config/environment'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Retrieve all owners
  get "/owners" do
    owners = Owner.all
    owners.to_json
  end

  # Retrieve all rentals
  get "/rentals" do
    rentals = Rental.all
    rentals.to_json
  end

  # Retrieve all locations
  get "/locations" do
    locations = Location.all
    locations.to_json
  end

  # Retrieve owners by location
  get "/owners/:location_id" do
    location_id = params[:location_id]
    owners = Owner.where(location_id: location_id)
    owners.to_json
  end

  # Retrieve rentals by location
  get "/rentals/:location_id" do
    location_id = params[:location_id]
    rentals = Rental.where(location_id: location_id)
    rentals.to_json
  end
  post "/owners" do
    # Retrieve the owner data from the request body
    request_body = JSON.parse(request.body.read)
    
    # Set the name and email of the owner
    request_body["name"] = "Gladys Alupo"
    request_body["email"] = "einsteinokiror@gmail.com"
    
    # Create a new owner record
    owner = Owner.create(request_body)
    
    # Return the created owner as JSON
    owner.to_json
  end
  get "/owners/:id" do
    # Retrieve the owner by ID
    owner = Owner.find(params[:id])
    
    # Return the owner as JSON
    owner.to_json
  end
  get "/locations/:name" do
    # Retrieve locations by name
    locations = Location.where(name: params[:name])
    
    # Return the locations as JSON
    locations.to_json
  end
  
  
  
end
