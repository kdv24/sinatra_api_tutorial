# 05 - Serializing

## Overview

Serialization is the process of converting an object that's in memory into a
stream of bits.  This allows you to do things like store that data in a
database, or send it over a network.  There may also be times when you only
want to some of the data, and/or you want that data to be in a particular
format.  Serializers fulfill that role.

## Cheet Sheet

1. Kill your sinatra app from the previous step if you still have it running
1. `cd` into the `05_serializing` lesson directory
1. `$ shotgun app.rb` and navigate to `localhost:9393/api/v1/friends` in your browser
1. Note that the friend objects look slightly different from before
