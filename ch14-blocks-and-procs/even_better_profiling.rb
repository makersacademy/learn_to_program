def profile block_description, &block

	profiling_on = false # turn to true to turn the block back on
	if profiling_on
	start_time = Time.new
	block.call
	duration = Time.new - start_time
	puts "#{block_description}:  #{duration} seconds"
  # your code here
end
	else block.call
	end
end



#Profile provides a way to Profile your Ruby application.
#Profiling your program is a way of determining which 
#methods are called and how long each method takes to complete. 
#This way you can detect which methods are possible bottlenecks.


