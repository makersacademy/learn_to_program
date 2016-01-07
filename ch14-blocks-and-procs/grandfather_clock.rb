def grandfather_clock(&block)
  hour = Time.new.hour
  if hour > 12
    hour -= 12
  end
  while hour > 0
    block.call
    hour -= 1
  end
end

grandfather_clock do
  puts "DONG!"
end

