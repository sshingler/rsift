require 'em-http'

module Rsift

  class Socket
  
    def self.perform(stream_identifier)
      endpoint = "ws://stream.datasift.net:8080/"
      EventMachine.run {
        http = EventMachine::HttpRequest.new(
            "#{endpoint}#{stream_identifier}").get(:timeout => 0)
    
        http.callback { puts "Connected to rsift" }
        http.errback { puts "something has failed" }
        http.disconnect { puts "oops, dropped connection?" }
    
        http.stream { |msg|
          yield msg
        }
      }
    end
  end
end