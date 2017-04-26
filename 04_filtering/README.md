# 04 - Filtering

## Overview

Sometimes, we want to be able to get back specific pieces of data based on some
parameter. Here we set up our `GET` to take params that filter the specific
friends we want (in this case, based on first/last name, and phone number).

## Cheet Sheet

1. Kill your sinatra app from the previous step if you still have it running
1. `cd` into the `04_filtering` lesson directory
1. Alter your `/friends` API endpoint to filter based on id, first_name,
last_name, and phone
1. Add scope to your `Friend` Class so that you can filter based on the params
specified in the previous step
1. `$ shotgun app.rb` and navigate to `localhost:9393/api/v1/friends` in your browser
