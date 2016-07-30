def profile block_description, &block #actually this is the dumbest idea EVER. By default main does not profile and we don't want to have to pass all blocks to a method that switches itself off. Just don't use the profile method just have the block if you don't want it to profile! Ridiculous. I could understand if the default behaviour was on, ie. every block executed returned runtime without needing to call the profile method as it was built into block execution rules... but this is not the case!
# To turn profiling on/off, set this
# to true/false.
profiling_on = false
if profiling_on
start_time = Time.new
block.call
duration = Time.new - start_time
puts "#{block_description}: #{duration} seconds"
else
block.call
end
end
