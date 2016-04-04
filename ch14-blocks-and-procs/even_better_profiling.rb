$profiling_on = true
def profile block_description, &block
  if profiling_on then
  	log_time = Time.new
  	block.call
  	exec_time = Time.new - log_time
  	p "#{block_description}: #{exec_time} seconds"
  else
  	block.call
  end
end