def profile block_description, &block
  number = 0
  if number == 0
  start_time = Time.new
  block.call
  duration = Time.new - start_time
  puts "#{block_description}: #{duration} seconds"
  else 
    block.call
    end
end



#it will test the time unless i change something in the code
#2 methods one where it checks the time and one where it calls block w/o checking time