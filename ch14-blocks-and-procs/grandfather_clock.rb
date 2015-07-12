def grandfather_clock &block
  repeat = Time.now.hour % 12
  repeat = 12 if repeat == 0
  repeat.times { block.call }
end

grandfather_clock do
  puts "DONG!"
end