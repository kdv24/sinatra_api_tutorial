#
# Dependencies
#
require 'sinatra'
require 'sinatra/activerecord'
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
