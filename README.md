gcloud-play
==========

Toy project used for accessing Google Storage Data.

### How to use it in development?

- run `bundle install`
- run `cp env.example .env` and replace placeholder values (`GC_PROJECT_ID`, `GC_JSON_FILE`, `GC_BUCKET_NAME`)
- in order to calculate spent 💰 for a specific project during the day replace
   - "example_file_name.json" with the name of a file which is available in the `$GC_BUCKET_NAME`
   - "example_project_name" with the name of a project associated with the billing account whose data are being exported to "example_file_name.json"
- run `bundle exec ruby calculate_daily_spend.rb <file-name-on-gc-bucket> <project-name-on-gc>` (why [bundle exec](https://bundler.io/man/bundle-exec.1.html))
- if you wish to load required libraries in the Ruby console, go ahead and run

```
$ bundle exec irb
irb(main):001:0> require_relative "environment"
=> true
```

  - now you'll be able to use classes stored in `lib`



     Dummy README change +
