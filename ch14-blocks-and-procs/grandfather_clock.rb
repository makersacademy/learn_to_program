def grandfather_clock &block
    
  hours_today=Time.new.hour
  
  if hours_today>12
      hours_today=hours_today-12
  end
  
  if hours_today==0
      hours_today = 12
  end
  
  hours_today.times do
     block.call
  end
end

grandfather_clock do
    puts "dong"
end

# dong = Proc.new do
#     puts "DONG"
# end

# puts grandfather_clock dong

# songbird = Proc.new do
#   puts "TWEET TWEET!" 
# end

# #puts grandfather_clock songbird