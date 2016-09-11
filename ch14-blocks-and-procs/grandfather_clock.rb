def grandfather_clock &block

  hour = Time.new.hour

  if hour >= 13
     hour = hour -12
   elsif hour == 0
     hour = 12
   else
     hour = hour
   end

   hour.times do
   block.call
   end
end

grandfather_clock do
  puts "DONG!"
end
