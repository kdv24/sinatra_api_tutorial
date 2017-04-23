#
# Dependencies
#
require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/namespace'
require 'shotgun'

#
# Classes
#
require './lib/friend'

#
# Serializers
#
require './serializers/friend_serializer'

#
# Database
#
set :database_file, 'config/database.yml'

#
# Endpoints
#
get '/' do
  "Welcome to LtnF! (Literally, the next Facebook)"
end

#
# API (v1.0)
#
namespace '/api/v1' do

  before do
    content_type 'application/json'
  end

  get '/friends' do
    friends = Friend.all

    [:id, :first_name, :last_name, :phone].each do |filter|
      friends = friends.send(filter, params[filter]) if params[filter]
    end

    friends.map { |friend| FriendSerializer.new(friend) }.to_json
  end

end
