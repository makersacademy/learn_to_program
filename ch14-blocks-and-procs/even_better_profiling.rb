def profile block_description, &block
	$OPT_PROFILING_ON = TRUE
	return if $OPT_PROFILING_ON=FALSE
	start_time=Time.new	
	block.call
	duration=Time.new - start_time
	puts "#{block_description}: #{duration} seconds"
end