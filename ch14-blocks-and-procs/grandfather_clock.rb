def grandfather_clock &block
  # your code here
  current_hour = Time.new.hour
  if current_hour > 12
    current_hour -=  12
  end

  current_hour.times do
    block.call
  end

end
