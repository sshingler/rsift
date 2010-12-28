require "test/unit"
require "shoulda"
require "./lib/rsift"

class SocketTest < Test::Unit::TestCase
  
  #This is a pretty lame test. Not sure how to improve.
  context "with a socket" do
    should "get data" do
      stream_identifier = "b6acf9e14021a8b6c3e18f17e8a1de19"
      Rsift::Socket.perform(stream_identifier) do |tweet|
        assert_not_nil tweet
        break
      end
    end
  end
end