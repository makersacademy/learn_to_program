def grandfather_clock(&block)
   n = Time.new.hour
   if n > 12
      hours = n - 12
   end
   if n < 12
      hours = n
   end
      hours.times do
   block.call
 end

 end

 grandfather_clock do
   puts "DONG!"
 end
