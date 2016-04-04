def grandfather_clock(&block)
  hour = Time.new.hour
  hour -= 12 if hour > 12
  hour.times{block.call}
end

grandfather_clock {puts "DONG!"}