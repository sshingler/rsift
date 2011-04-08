require 'em-http'

module Rsift

  class Socket

    def self.perform(stream_identifier)
      endpoint = "ws://websocket.datasift.net/"

      EventMachine.run {
        http = EventMachine::HttpRequest.new(
            "#{endpoint}#{stream_identifier}").get(:timeout => 0)

        http.callback do
          puts "Connected to datasift" 
        end
        
        http.errback do
          raise SocketError.new("Datasift threw an error")
        end
        
        http.disconnect do
           raise SocketDisconnect.new("Datasift disconnected me.")
        end

        http.stream { |msg|
          yield msg
        }
      }
    end
  end
  
  class SocketDisconnect < StandardError; end
  class SocketError < StandardError; end
end