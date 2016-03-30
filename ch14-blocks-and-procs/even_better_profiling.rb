def profile block_description, &block 
  	profiling = true
  	if profiling
  		before_block = Time.new
  		block.call
  		after_block = Time.new
  		duration = after_block - before_block
  		puts block_description + ': ' + duration.to_s + ' seconds'
  	else
  		block.call
  	end
end