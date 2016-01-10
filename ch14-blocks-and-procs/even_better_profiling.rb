def profile block_description, &block
#Used OPT_PROFILING_ON by looking at SPEC
	if $OPT_PROFILING_ON
  		start_time = Time.new
  		block.call
  		duration = Time.new - start_time
  		puts "#{block_description}: #{duration} seconds"
	else
		block.call
	end
end

