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

  #
  # Before
  #
  before do
    content_type 'application/json'
  end

  #
  # Helpers
  #
  helpers do
    def base_url
      @base_url ||= "#{request.env['rack.url_scheme']}://{request.env['HTTP_HOST']}"
    end

    def json_params
      begin
        JSON.parse(request.body.read)
      rescue
        halt 400, { message: 'Invalid JSON' }.to_json
      end
    end

    def friend
      @friend ||= Friend.where(id: params[:id]).first
    end

    def halt_if_not_found!
      halt 404, { message: "Friend not found" }.to_json unless friend
    end

    def serialize(friend)
      FriendSerializer.new(friend).to_json
    end
  end

  #
  # GET /friends
  #
  get '/friends' do
    friends = Friend.all

    [:id, :first_name, :last_name, :phone].each do |filter|
      friends = friends.send(filter, params[filter]) if params[filter]
    end

    friends.map { |friend| FriendSerializer.new(friend) }.to_json
  end

  #
  # GET /friends/:id
  #
  get '/friends/:id' do |id|
    halt_if_not_found!
    serialize(friend)
  end

  #
  # POST /friends
  #
  post '/friends' do
    friend = Friend.new(json_params)

    halt 422, serialize(friend) unless friend.save

    response.headers['Location'] = "#{base_url}/api/v1/friends/#{friend.id}"
    status 201
  end

  #
  # PATCH /friends/:id
  #
  patch '/friends/:id' do |id|
    halt_if_not_found!

    halt 422, serialize(friend) unless friend.update_attributes(json_params)
    serialize(friend)
  end

  #
  # DELETE /friends/:id
  #
  delete '/friends/:id' do |id|
    friend.destroy if friend
    status 204
  end

end
