# Load the required gems/libraries.
require "dotenv/load"
require "require_all"
require "json"
require "google/cloud/storage"

require_all "lib"

env = ENV["RAKE_ENV"] || "development"
