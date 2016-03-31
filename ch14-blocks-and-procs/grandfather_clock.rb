def grandfather_clock &block
  # your code here
  digital_hour = Time.new.hour
  if digital_hour > 12
    analog_hour = digital_hour - 12
  elsif digital_hour == 0
    analog_hour = 12
  else
    analog_hour = digital_hour
  end
  analog_hour.times do
    block.call
  end
end

# grandfather_clock do
#   puts "Dong"
# end