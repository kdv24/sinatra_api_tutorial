# 02 - Database Setup and Model Creation

## Overview

Here we're going to setup a database and create our model.

## Cheet Sheet

### Initial Steps

1. Kill your sinatra app from the previous step if you still have it running
1. `cd` into the `02_db_setup_and_model` lesson directory

### Create Model and Database

1. Create a `lib` directory and your `Friend` class in `lib/friend.rb`
1. Create a `config` directory and `config/database.yml` file
1. Create a `Rakefile`
1. Modify your `app.rb` file to require Active Record, your new friend.rb file, and to set the database file:
- `require 'sinatra/activerecord'`
- `require './lib/friend'`
- `set :database_file, 'config/database.yml'`
1. Create the database for your data to live in: `$ rake db:create`
1. Run `rake db:create_migration NAME=create_friends`
1. Modify your newly created migration and run `$ rake db:migrate`
1. Create a `db/seeds.rb` file and run `$ rake db:seed`

### Check Your Work

You aren't going to see anything in the browser just yet, but you can still
check things out in the database to make sure everything looks right.

1. `$ psql ltnf`
1. `ltnf=# \d friends`
1. `ltnf=# SELECT * FROM friends;`
