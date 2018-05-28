gcloud-play
==========

Toy project used for accessing Google Storage Data.

### How to use it in development?

- run `bundle install`
- set these env vars: GC_PROJECT_ID, GC_JSON_FILE, GC_BUCKET_NAME, GC_FILE_NAME
- run `bundle exec ruby download_file.rb` (why [bundle exec](https://bundler.io/man/bundle-exec.1.html))
- if you wish to load required libraries in the Ruby console, go ahead and run
```
$ bundle exec irb
irb(main):001:0> require_relative "environment"
=> true
```
