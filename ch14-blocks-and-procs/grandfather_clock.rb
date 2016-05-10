def grandfather_clock &block
  clock = Time.new.hour
  clock = clock - 12 if clock >= 13
  clock = 12 if clock == 0
  
  clock.times do
    block.call
  end
end

grandfather_clock do
  puts 'DONG!'
end