def grandfather_clock &block
  time = Time.new.hour

  time = time - 12 if time >= 13
  time = 12 if time == 0

  time.times do
    block.call
  end
end

grandfather_clock { puts "DONG!"}
