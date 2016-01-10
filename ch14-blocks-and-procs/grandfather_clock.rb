def grandfather_clock(&block)

hours =  Time.new.hour

  if hours > 12
    hours = hours - 12
  end

  if hours == 0
    hours = 12
  end

  hours.times do
    block.call
  end
end

grandfather_clock do
  puts 'DONG!'
end
