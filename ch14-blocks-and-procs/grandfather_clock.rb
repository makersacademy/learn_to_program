def grandfather_clock &block
  time_passed = Time.new.hour
  if time_passed > 12
    time_passed -= 12
  else
    time_passed
  end
  time_passed.times {block.call}
end
