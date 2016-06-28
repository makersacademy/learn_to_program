def grandfather_clock &block
  hour = Time.new.hour

  #if the time is gone 1300 on 24 hour clock
  #change to equivalent 12 hour time
  if hour >= 13
    hour -= 12
  end

  if hour == 0
    hour = 12
  end

  hour.times do
    block.call
  end
end

grandfather_clock do
  puts 'DONG!'
end
