# 03 - First API Endpoint

## Overview

You have data in your database just waiting to be sent to an endpoint.  Here, we
add our first endpoint that displays all of your friends data.

## Cheet Sheet

1. Kill your sinatra app from the previous step if you still have it running
1. `cd` into the `03_first_api_endpoint` lesson directory
1. Add your endpoint to the `app.rb` file as follows:
    ```
    ...

    namespace '/api/v1' do

      before do
        content_type 'application/json'
      end

      get '/friends' do
        Friend.all.to_json
      end

    end

    ...
    ```
1. `$ shotgun app.rb` and navigate to `localhost:9393/api/v1/friends` in your browser
