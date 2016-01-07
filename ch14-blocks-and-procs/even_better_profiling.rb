def profile(block_description, &block)
  profiling = false
  if profiling
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  end
end