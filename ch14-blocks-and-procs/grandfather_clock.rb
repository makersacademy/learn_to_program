def grandfather_clock &block
  twenty_hour_time = Time.new.hour
  if twenty_hour_time > 12
    twelve_hour_time = twenty_hour_time - 12
  else
    twelve_hour_time = twenty_hour_time
  end
  twelve_hour_time.times do
puts "DONG!"
  end
end

grandfather_clock
