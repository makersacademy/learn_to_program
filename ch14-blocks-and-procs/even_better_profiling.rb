PROFILING = true # turn profiling ON or OFF

def profile block_description, &block
  if PROFILING
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  end
end



