def grandfather_clock &block
  hour = Time.new.hour
  if hour == 0
    hour = 12
  else
    hour > 12 ? hour = Time.new.hour - 12 : hour = hour
  end

  hour.times(&block)
end