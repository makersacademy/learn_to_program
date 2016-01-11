def grandfather_clock &block
  count = (Time.new.hour % 12)
  count = 12 if count % 12 == 0
  count.times { block.call }
end

grandfather_clock do
  puts "ding dong"
end
