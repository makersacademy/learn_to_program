#!/usr/bin/env ruby

def profile block_description, &block
  if $profile=TRUE #turn profiling on/off with global variable
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  end
end
