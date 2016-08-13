def grandfather_clock (&block)
  # find out how many hours have passed today so far  
  hours_passed = Time.new.hour
  # result is now 0-23. Change to 1-12 (for 12-hour clock)
  if hours_passed == 0
    hours = 12
  elsif hours_passed >= 13
    hours = hours - 12
  end
  # call block (used with 'gradfather_clock' method) as many times as hours passed
  hours_passed.times do
    block.call
  end
end

# block to be passed into grandfather_clock method above:
#grandfather_clock do
  #puts 'DONG!'
#end