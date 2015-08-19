def profile descriptionOfBlock, &block  #we pass the block and a parameter
 status = "on" # we run the test - to turn off we change this to off
 if status == "on" #run the tests
   
 
  startTime = Time.now

  block.call

  duration = Time.now - startTime

  puts descriptionOfBlock+':  '+duration.to_s+' seconds'
else #don't run the tests
  block.call
end
end

profile '25000 doublings' do #we find out how long this takes
  number = 1

  25000.times do
    number = number + number
  end

  # Show the number of digits in this HUGE number.
  puts number.to_s.length.to_s+' digits'
end

profile 'count to a million' do
  number = 0

  100.times do
    puts number
    number = number + 1
  end
end