#!/bin/env ruby

require "google/cloud/storage"

storage = Google::Cloud::Storage.new(
  project_id: ENV['GC_PROJECT_ID'],
  credentials: ENV['GC_JSON_FILE']
)

bucket = storage.bucket ENV['GC_BUCKET_NAME']

file = bucket.file ENV['GC_FILE_NAME']

# Download the file to the local file system
file.download "tmp.json"
