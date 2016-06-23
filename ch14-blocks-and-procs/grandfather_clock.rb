def grandfather_clock &block
  curr_hour = Time.new.hour
  if curr_hour >= 13
    curr_hour -= 12
  end

  if curr_hour == 0
    curr_hour = 12
  end
  curr_hour.times do
    block.call
  end
end
