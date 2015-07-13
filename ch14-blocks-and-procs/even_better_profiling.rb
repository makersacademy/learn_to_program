#call profile by giving 'status' a Boolean value
# true if you wish to carry out profiling
# false if you simply wish to just run the block

def profile block_description, status, &block
  if status==true
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end