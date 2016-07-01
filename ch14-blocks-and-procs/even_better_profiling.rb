def profile block_description, &block
  
  currently_profiling = false
  if currently_profiling = true
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end