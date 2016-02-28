def grandfather_clock &block

  if Time.new.hour >= 13
    current_hour = Time.new.hour - 12
  else
  current_hour = Time.new.hour
  end

  current_hour.times do
  block.call
  end

end
