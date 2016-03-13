def grandfather_clock(&block)
  hour = Time.new.hour
  hour = hour - 12 if hour >= 13
  hour = 12 if hour == 0
  hour.times do
    block.call
  end
end
