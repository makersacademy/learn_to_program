def grandfather_clock &block

  if Time.new.hour > 12
    twelve_hour_clock = Time.new.hour - 12
    twelve_hour_clock.times do
      block.call
    end
  else
    current_time = Time.new.hour
    current_time.times do
      block.call
    end
  end
end

grandfather_clock do
  puts 'DONG!'
end