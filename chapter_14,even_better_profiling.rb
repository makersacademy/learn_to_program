def profile block_description, &block
  # To turn profiling on/off, set this
  # to true/false.
  profiling_on = true
  if profiling_on
    start_time = Time.new
    block.call
    
    duration = Time.new - start_time #only take time before and after running the code.
    puts "#{block_description}: #{duration} seconds"
  else #If profiling is off. Only the code is running 
    block.call
  end
end
profile 'count to a million' do
  number = 0
  1000000.times do
    number = number + 1
  end
end


