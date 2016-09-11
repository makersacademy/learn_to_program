def profile block_description, &block
  profiling_on = true  #toogle profiling on / off by setting it true or false
  
  if profiling_on #if true
      start_time = Time.new #get the time and store it in start_time
      block.call #call the passed in block, the one I want to time
      
      duration = Time.new - start_time #calculate the time difference
      puts "#{block_description}: #{duration} seconds" #write on the screen the result
  else
      block.call # if condition false, just run the code without timing.
  end
end