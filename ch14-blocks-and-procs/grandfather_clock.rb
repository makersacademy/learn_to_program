def grandfather_clock &block
  hours = Time.new.hour
  hours.times { block.call }
end