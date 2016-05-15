def profile block_description, &block
	start_time = Time.new
	block.call
	duration = Time.new - start_time
	puts "#{block_description}: #{duration} seconds" if $OPT_PROFILING_ON # Was this what I was meant to do? Ehhh
end
