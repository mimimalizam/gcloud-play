#!/bin/env ruby

require_relative "environment.rb"

puts DailySpend.new(ARGV[0], ARGV[1]).total_value
