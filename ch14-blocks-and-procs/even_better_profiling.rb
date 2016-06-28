def profile block_description, &block
  # your code here
  #change to false to turn off
  is_profiling = true

  if is_profiling
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block[]
  end
end
