require_relative '../shoe-store/consume_ws'

class SseController < ApplicationController
  include ActionController::Live

  def index
    response.headers['Content-Type'] = 'text/event-stream'
    sse = SSE.new(response.stream)
    
    newSse = Ws::Consume_ws.new()

    newSse.stEvents.run do 

       ws = Faye::WebSocket::Client.new('ws://localhost:8080/')
       ws.on :message do |event|
       inevent = JSON.parse(event.data)
       puts(inevent)
       sse.write(inevent , event: "update\n")
       end
    
    end
  ensure
    sse.close
  end

end
