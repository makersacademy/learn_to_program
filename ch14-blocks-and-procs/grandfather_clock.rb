def grandfather_clock  &block

now = Time.new.hour
if now >= 13
  now = now - 12
end
if now == 0
  now = 12
end
now.times do
  block.call
end
end


grandfather_clock do
  puts 'DONG!'
end