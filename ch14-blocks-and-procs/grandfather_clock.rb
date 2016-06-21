def grandfather_clock &block
  current_hour = Time.new.hour % 12

  if current_hour > 12
    current_hour = current_hour % 12
  end

  if current_hour == 0
    current_hour = 12
  end

  current_hour.times do
    block.call
  end
end

grandfather_clock do
  puts 'DONG!'
end
