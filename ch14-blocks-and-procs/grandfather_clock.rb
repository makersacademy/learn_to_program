def grandfather_clock &block
  hours = Time.now.hour + 1
  hours -= 12 if hours > 12
  hours.times do
      block.call
  end
end

grandfather_clock do
    puts 'DONG!'
end