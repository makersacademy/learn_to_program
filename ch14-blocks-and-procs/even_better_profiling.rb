def profile block_description, &block
  profiling_toggle = true
  if profiling_toggle
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end