#def profile block_description, &block
#  start_time = Time.new
#  block.call
#  duration = Time.new - start_time
#  puts "#{block_description}: #{duration} seconds"
#end

def profile block_description, &block
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
