# 05 - Serializing

## Overview

Serialization is the process of converting an object (in this case, a Ruby
object) into a plain text string of some sort (in this case, JSON).  This allows
you to do things like store the object's data in a database, or send it over a
network. There may also be times when you only want some of the data, and/or
you want that data to be in a particular format.  Serializers fulfill that role.

## Cheet Sheet

1. Kill your sinatra app from the previous step if you still have it running
1. `cd` into the `05_serializing` lesson directory
1. In your `app.rb`:
- require the serializer: `require './serializers/friend_serializer'`,
- in your `/friends` route, map through friends and add a `FriendSerializer`
1. Create a `serializer` directory with a `friend_serializer.rb` file
1. In the `friend_serializer.rb` file, create a new FriendSerializer class and initialize and define what your json should look like
1. `$ shotgun app.rb` and navigate to `localhost:9393/api/v1/friends` in your browser
1. Note that the friend objects look slightly different from before
