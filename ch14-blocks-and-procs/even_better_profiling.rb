def profile(block_description, &block)
  profiling_on = true # to turn the profiling on/off
  if profiling_on
  	start_time = Time.new
  	block.call
  	duration = Time.new - start_time
  	puts "#{block_description}: #{duration} seconds"
  else
  	block.call
  end
end