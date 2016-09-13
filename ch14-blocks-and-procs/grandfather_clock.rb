def grandfather_clock &block
  current_hour = Time.new.hour
  if current_hour > 12
    current_hour -= 12 
  end
  current_hour.times do
    block.call
  end
end

grandfather_clock do
  puts "DONG!"
end
