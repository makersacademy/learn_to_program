$PROFILING

def profile block_description, &block
	if $PROFILING
		start_time = Time.new
    	block[]
    	duration = Time.new - start_time
    	puts "#{block_description}: #{duration} seconds"
  else
    block[]
  end
end