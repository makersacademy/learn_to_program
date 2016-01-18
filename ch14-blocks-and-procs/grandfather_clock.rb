def grandfather_clock &block
  # your code here
  clock = Time.new.hour

  if clock > 12
    clock = clock - 12
  end

  if clock == 0
    clock = 12
  end

  clock.times do
  block.call
  end
end

grandfather_clock do

  puts "Dong!"


















end
