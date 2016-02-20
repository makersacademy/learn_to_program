def profile block_description, &block
  activated = true
  start_time = Time.new
  block.call if activated
  duration = Time.new - start_time
  puts "#{block_description}: #{duration} seconds"
end
