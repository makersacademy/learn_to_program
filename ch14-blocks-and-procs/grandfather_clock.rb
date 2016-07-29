def grandfather_clock &block
  (Time.new.hour == 12 || Time.new.hour == 0) ? hour = 12 : hour = Time.new.hour % 12
  hour.times(&block)
end
