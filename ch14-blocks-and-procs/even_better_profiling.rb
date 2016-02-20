$profiling_on = true #need the $ sign at start as otherwise will not recognise variable in method- local vs global

def profile block_description, &block 
  	if $profiling_on
  		start_time = Time.new
		block.call
		duration = Time.new - start_time
		puts "#{block_description}: #{duration} seconds"
	else
		block.call
	end
end

