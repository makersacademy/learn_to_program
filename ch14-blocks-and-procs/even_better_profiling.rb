def profile block_description, &block
  profile_mode = false    #just change this to true if you want to time your block. Otherwise the block will just be called.
  if profile_mode = true
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end
