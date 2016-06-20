def grandfather_clock &block
  # your code here
  hour = Time.new.hour
  if hour > 12
    hour -= 12
  end

  if hour == 0 
    hour = 12
  end

  hour.times do 
    block.call
  end 
end

puts "The time sponsored by Accurist is...:"
grandfather_clock do 
  puts 'DONG!'
end
puts "Yeah, that much."