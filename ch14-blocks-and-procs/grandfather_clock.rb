def grandfather_clock &block
  hours = (Time.new.hour + 11)%12 + 1
  hours.times.collect(&block)
end

grandfather_clock {puts 'DONG!'}
