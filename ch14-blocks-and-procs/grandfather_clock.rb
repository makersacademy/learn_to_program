def grandfather_clock &block
  block.call
end

grandfather_clock do
  if Time.new.hour > 12
    now = Time.new.hour - 12
  else
    now = Time.new.hour
  end
  now.times do
    puts "DONG!"
  end
end

