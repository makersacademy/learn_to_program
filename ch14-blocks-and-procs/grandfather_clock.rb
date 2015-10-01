def grandfather_clock(&block)
  time = Time.new.hour
  time -= 12 if time > 12
  (time).times do
    block.call
  end
end

grandfather_clock do
  puts 'DONG!'
end
