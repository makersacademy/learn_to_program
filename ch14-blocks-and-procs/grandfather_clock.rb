def grandfather_clock(&block)
  time = Time.new.hour
  time = time - 12 if time.between?(13, 23)
  time.times do
    block.call
  end
end

grandfather_clock do
puts "DONG!"
end
