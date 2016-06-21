def grandfather_clock block
  current_hour = Time.new.hour

  if current_hour > 12
  hours = current_hour - 12
  else
  hours = current_hour
  end

  hours.times do
    block.call
  end

end

dong = Proc.new do
  puts "DONG!"
end

grandfather_clock dong
