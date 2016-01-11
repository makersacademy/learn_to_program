def profile block_description, &block
	turn_on_profiling = true
	if turn_on_profiling == true
	start_time = Time.new
	block.call
	duration = Time.new - start_time
	puts "#{block_description}: #{duration} seconds"
    else
    block.call
	end
end