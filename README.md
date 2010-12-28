# rsift

This is a Ruby client wrapper for the Datasift API. Right now, it just handles data, streams and comments. There's also a class to handle receiving data from Datasift using their websockets implementation.

Current Limitations

* All calls require credentials to be passed in
* All responses are in JSON

# To get started:

  stream = Rsift::Stream.new(api_url, api_key, username)
  
  json_response = @stream.do("my")

  comment = Rsift::Comment.new(api_url, api_key, username)

  opts = {:stream_id => "1", :comment => "test comment"}

  json_response = comment.do("create", opts)


# The websockets API can be used like this:

  Rsift::Socket.perform(stream_identifier) do |tweet|
    puts tweet
  end
  
Check the tests for more usage examples.

