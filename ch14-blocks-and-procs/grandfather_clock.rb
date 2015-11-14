def grandfather_clock &block
  current_hour = Time.new.hour
  current_hour.times { block.call }
end

grandfather_clock {puts 'DONG'}
