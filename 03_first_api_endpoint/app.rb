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
    Friend.all.to_json
  end

end
