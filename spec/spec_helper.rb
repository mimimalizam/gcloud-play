require_relative "../environment.rb"

require "vcr"

VCR.configure do |config|
  config.cassette_library_dir = "spec/fixtures/vcr_cassettes"
  config.hook_into :webmock
  config.allow_http_connections_when_no_cassette = false
  config.default_cassette_options = { 
    :record => :once,
    :match_requests_on => [:method, VCR.request_matchers.uri_without_param(:token)]
  }
end
