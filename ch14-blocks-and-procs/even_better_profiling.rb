def profile block_description, &block
  
  switch = false

  if switch
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds" 
  else
    block.call
  end
end

