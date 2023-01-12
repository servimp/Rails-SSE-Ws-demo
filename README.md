# Installation

Demo uses Rails 7+

1: Clone the repo

2: `bundle install`

3: Run `websocketd --port=8080 ruby inventory.rb` from app/shoe-store/ 

IMPORTANT: if you are having problems with the websocketd executable not found, set ENV variables
`export PATH=$PATH:$HOME/websocketd/bin`
`export PATH=$PATH:/usr/local/websocketd/bin`

4: Start Rails `rails s`

5: To view the demo go to http://localhost:3000/sse/

## Description
An instance of event machine is used to get the WS data.
SSE (Server sent events) are used to stream the messages received by WS.

## Features

1: New stores are created when inventory information for a new store is received.

2: If data for a new model is received, the model is created in the related store.

3: Re-stocking limits alerts are shown when inventory for a model is below 10 units.

4: Show store transfers are suggested after higher quantities of a model are available in other stores.
