def profile block_description, &block 
# To turn profiling on/off, set this 
# to true/false. 
	
	profiling_on = true # true for on, false for off

		if profiling_on
		start_time = Time.new  # time block is called
		block.call # call the block liner
		duration = Time.new - start_time # time taken for block to execute
		puts "#{block_description}: #{duration} seconds"
		else 
		block.call # call block without calculating the time taken
		end 
end

