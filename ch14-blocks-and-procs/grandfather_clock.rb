def grandfather_clock &block
  if Time.new.hour == 0
    hour = 12
  else
  Time.new.hour > 12 ? hour = Time.new.hour - 12 : hour = Time.new.hour
  end
  hour.times(&block)
end
