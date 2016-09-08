def grandfather_clock &block
  if Time.new.hour > 12
    count = Time.new.hour-12
  elsif Time.new.hour == 0
    count = 12
  else
    count = Time.new.hour
  end
  count.times &block
end

grandfather_clock do
  puts "DONG!"
end
