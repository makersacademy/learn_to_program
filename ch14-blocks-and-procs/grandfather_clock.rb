def grandfather_clock &block
  current_hour = Time.new.hour
  current_hour -= 12 if current_hour > 12
  current_hour = 12 if current_hour == 0
  current_hour.times { block.call }
end

grandfather_clock {puts 'DONG'}
