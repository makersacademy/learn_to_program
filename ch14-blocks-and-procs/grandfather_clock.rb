def grandfather_clock &block
  Time.new.hour > 12 ? hour = Time.new.hour - 12 : hour = Time.new.hour
  hour.times(&block)
end
