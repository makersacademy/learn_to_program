def grandfather_clock &block
  current_time = Time.new.hour
  if current_time > 12
    current_time -= 12
    current_time.times do
      block.call
    end
  elsif current_time == 0
    current_time = 12
    current_time.times do
      block.call
    end
  else
    current_time.times do
      block.call
    end
  end
end

grandfather_clock do
  puts 'DONG!'
end
