def grandfather_clock &block
  time_now = Time.new.hour
  if time_now >= 13
    time_now = time_now - 12
  end

  if time_now == 0
    time_now = 12
  end

  time_now.times do
    block.call
  end
end

grandfather_clock do
  puts 'DONG!'
end
