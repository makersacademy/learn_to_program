def profile block_description, &block
  start_time = Time.new
  block[]
  elapsed = Time.new - start_time
  puts "#{block_description}: #{elapsed} seconds"
  block[]
end

