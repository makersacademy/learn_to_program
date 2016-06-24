def grandfather_clock(&block)
  hours = Time.new.hour
  hours = hours - 12 if hours > 12
  hours.times { block.call }
end

grandfather_clock { puts "Dong!" }
