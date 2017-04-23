# 06 - More Endpoints

## Overview

Here we add the rest of the endpoints that make sense (get by id, post, patch,
and delete). We also add some validation to the `Friend` class to ensure that a
request has a first and a last name (if missing, an error is returned).

## Cheet Sheet

1. Kill your sinatra app from the previous step if you still have it running
1. `cd` into the `06_more_endpoints` lesson directory
1. `$ shotgun app.rb` and navigate to `localhost:9393/api/v1/friends` in your browser
1. Get a specific friend by id:
    ```
    localhost:9393/api/v1/friends/3
    ```
1. Add a friend object to the list:
    ```
    $ curl -i -X POST -H "Content-Type: application/json" -d '{"first_name":"Cersei", "last_name":"Lannister"}' http://localhost:9393/api/v1/friends
    ```
1. Add a `phone` number for the newly added friend with a `PATCH`:
    ```
    $ curl -i -X PATCH -H "Content-Type: application/json" -d '{"phone":"518-555-0185"}' http://localhost:9393/api/v1/friends/4
    ```
1. Delete a friend from the list:
    ```
    curl -i -X DELETE -H "Content-Type: application/json" http://localhost:9393/api/v1/friends/4
    ```
