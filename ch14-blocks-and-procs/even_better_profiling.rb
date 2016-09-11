def profile block_description, &block
  #this method take a code a sees how long it takes to run.. in seconds
  #the block_description is the name of the code
  #&block is the code's block truned into a proc.
  profiling = true
  if profiling
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end
