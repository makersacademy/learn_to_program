def grandfather_clock &block
  # your code here
  time = Time.new.hour
  
  if time > 12
  	time -= 12
  elsif time == 0
  	time += 12
  end
  time.times {block.call}
end 

grandfather_clock {puts 'DONG!'}

puts "  _   _"
puts '_/0\_/0\_'
puts ' \_/ \_/ '
puts '   ___   '
puts '  /___\  '
puts '   ===   '
