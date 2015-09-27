def profile block_description, &block
turned_on = false
  
  if turned on = true
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  end
end