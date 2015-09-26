def profile(block_description, &block)
  start_time = Time.new
  block
  duration = Time.new - start_time
  puts "#{block_description}: #{duration} seconds"
end