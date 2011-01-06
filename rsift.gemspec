# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rsift/version"

Gem::Specification.new do |s|
  s.name        = "rsift"
  s.version     = Rsift::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Steven Shingler"]
  s.email       = ["shingler@gmail.com"]
  s.homepage    = "http://github.com/sshingler/rsift"
  s.summary     = %q{Ruby wrapper for the Datasift API}
  s.description = <<-EOF
This is a Ruby client wrapper for the Datasift API. 
Right now, it just handles data, streams and comments. 
There's also a class to handle receiving data from Datasift 
using their websockets implementation.
EOF

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency("rake", "0.8.7")
  s.add_dependency("json", "1.4.6")
  s.add_dependency("rest-client", "1.4.2")
  s.add_dependency("jakal", "0.1.95")
  s.add_dependency("em-http-request", "0.2.15")

  # Test libraries
  s.add_dependency("test-unit", "2.1.1")
  s.add_dependency("shoulda", "2.11.3")
  s.add_dependency("webmock", "1.6.1")
end