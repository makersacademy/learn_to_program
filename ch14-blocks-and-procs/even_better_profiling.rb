def profile block_description, profiling_on, &block
  # To turn profiling on/off, set this
  # to true/false.
  if profiling_on
    start_time = Time.new
    block.call
    
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end
