#Even better profiling - turn on/off

def profile block_description, &block
  #set profiling to true/false

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
