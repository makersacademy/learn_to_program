def grandfather_clock &block
  current_time = Time.new.hour
  if current_time <= 12
    current_time.times do
      block.call
    end
  else
    (current_time - 12).times do
      block.call
    end
  end
end

grandfather_clock do
  puts "DONG!"
end
