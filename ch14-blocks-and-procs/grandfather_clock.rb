def grandfather_clock &block
  current_hour = Time.new.hour
  if current_hour > 12
    (current_hour - 12).times do
      block.call
    end
  else
    current_hour.times do
      block.call
    end
  end
end
