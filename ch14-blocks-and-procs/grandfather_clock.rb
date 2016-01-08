def grandfather_clock &block
  hour = Time.new.hour 

  hour = 12 if hour == 0
  if hour > 12
      hour -= 12
  end

  hour.times do
    block.call   
  end
end

