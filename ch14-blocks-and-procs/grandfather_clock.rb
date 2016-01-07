def grandfather_clock &block

time = Time.new.hour

if time > 12
time = time - 12
end

time.times do
block.call
end

end

grandfather_clock do
  puts "DONG!"
end