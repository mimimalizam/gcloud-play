# Load the required gems/libraries.
require "require_all"
require "json"
require "google/cloud/storage"

env = ENV["RAKE_ENV"] || "development"
