def grandfather_clock &block
current_time = Time.new.hour
  if current_time >= 13
    current_time = current_time - 12
  end
  if current_time == 0
    hour = 12
  end

  current_time.times do
    block.call
  end
  end
  grandfather_clock do
    puts 'DONG!'
end