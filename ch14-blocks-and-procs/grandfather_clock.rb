def grandfather_clock &block
  hoursPassed =  Time.new.hour+1 < 12 ? Time.new.hour  : Time.new.hour - 12
  # puts hoursPassed
  hoursPassed.times {block.call}
end

# grandfather_clock {puts "Bong!"}