def grandfather_clock &block

  the_hour = Time.new.hour

  the_hour.times do
    block.call
  end

  if the_hour == 0 then the_hour = 12
  end
  if the_hour >= 13 then the_hour = the_hour - 12
  end
end

grandfather_clock do
  puts "DONG!"
end
