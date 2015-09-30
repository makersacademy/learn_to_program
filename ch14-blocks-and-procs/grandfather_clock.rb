def grandfather_clock &block
  hours = Time.new.hour
  if hours < 13
    hours
  else
    hours = hours - 12
  end
  hours.times do
    block.call
  end
end

puts Time.new

grandfather_clock do
  puts "Dong!"
end
