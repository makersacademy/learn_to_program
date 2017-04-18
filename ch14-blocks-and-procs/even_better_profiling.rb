def profile block_description, &block
profiling = true
# This is our "switch", allowing us to turn the profiling on/off.  By default,
# profiling is set to 'true', and so, together with the below 'if' statement,
# profiling will run each time a block, together with its description, is passed
# into the profile method.  Setting the profiling variable to 'false' will
# switch off profiling.  
 if profiling == true
  start_time = Time.new
  block.call
  duration = Time.new - start_time
  puts "#{block_description}: #{duration} seconds"
 else
  block.call
 end
end
