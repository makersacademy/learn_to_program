def grandfather_clock &block
  hour_now = Time.new.hour
  if hour_now >= 13
    hour_now -= 12
  else hour_now == 0
    hour_now == 12
  end

  hour_now.times do
    block.call
  end
end

grandfather_clock do
  puts 'DONG!'
end
