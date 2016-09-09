def grandfather_clock &block
  hour = (Time.new.hour + 11) % 12 + 1 # if Time.new.hour % 12 is coded only, hour at 12 and 24 will == 0
  hour.times {block.call}
end

grandfather_clock do
  puts "DONG!"
end