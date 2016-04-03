def grandfather_clock &block
  current_time = Time.new.hour
  if current_time > 12
    current_time -= 12
  end
  current_time.times do
    block.call
  end
end

grandfather_clock do
  puts "BONG"
end
