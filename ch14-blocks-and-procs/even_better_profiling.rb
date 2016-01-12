# This is the method I best understand, but CP soln doesn't pass rspec...!
# 
# 	def profile (block_description, &block)
#   	profiling_on = false
#   	if profiling_on
#     	start_time = Time.new
#     	block.call
    
#     	duration = Time.new - start_time
#     	puts "#{block_description}: #{duration} seconds"
#   	else
#     	block.call
#   	end
# 	end

# CP soln that does pass rspec - I changed it to run block.call (vs block []) + unsure of use of Global Variables ($), not sure it adds anything...


$OPT_PROFILING_ON = false

def profile block_description, &block
  if $OPT_PROFILING_ON
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end

