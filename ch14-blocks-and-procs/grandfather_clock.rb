def grandfather_clock &block
  hour = Time.new.hour #gives us the current time in hours (24hr clock)
  if hour >= 13 #takes the 24hr clock and makes it in a 12hr clock
    hour = hour - 12
  end

  if hour == 0
    hour = 12
  end

  hour.times do
    block.call #this is the 'DONG' &block.
  end
end
grandfather_clock do
  puts 'DONG!'
end
