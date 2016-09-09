def grandfather_clock &block
  current = Time.new.hour

  if current <= 13
    current - 12
  end

  if current == 0
    current = 12
  end

  current.times do
    block.call
  end
end

grandfather_clock do
  puts "DONG!"
end
