def profile block_description, &block
  #change to false to stop profiling
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