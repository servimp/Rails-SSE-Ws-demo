# Installation

Note: Runs on Rails 7+

1: Clone the repository

2: run `bundle install'

3: run `websocketd --port=8080 ruby inventory.rb` from app/shoe-store/ 
IMPORTANT: if you are having problems with the websocketd executable not found, set ENV variables
`export PATH=$PATH:$HOME/websocketd/bin`
`export PATH=$PATH:/usr/local/websocketd/bin`

4: Start Rails `rails s`

5: To see the demos open http://localhost:3000/sse/

## Brief
The Demo makes use of the WS-server using websocketd, an instance of event machine is used to receive the WS data.
SSE (Server sent events) are used to stream the messages received by WS

## Features

1: Stores are created whenever inventory information for a new store is received.

2: If data for a new model is received, the model is created in the related store.

3: Re-stocking limits alerts are received below 10 units.

4: Show store transfers are suggested after the model is available in other stores.
