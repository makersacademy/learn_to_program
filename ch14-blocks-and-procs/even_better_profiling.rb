 def profile block_description, &block 
profiling_on = false

if profiling_on
start_time = Time.now
block.call

duration = Time.now - start_time
puts "#{block_description} : #{duration}seconds."
else
    block.call
end
 end

