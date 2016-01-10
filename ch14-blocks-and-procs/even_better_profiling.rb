def profile block_description, &block
  profiling = true
  if profiling
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end

#want to be able to change one line of code to turn profiling on or off. This will give the time taken if profiling remains equal to true. To turn it off, just change to false.