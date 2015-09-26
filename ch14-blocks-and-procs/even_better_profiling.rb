def profile block_description, &block

  # Set true to enable profiling.
  profilingEnabled = true

  if profilingEnabled
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end

end