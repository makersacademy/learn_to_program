def grandfather_clock &block
  t = Time.now
  now = t.hour
  if now > 12
    now = now -12
  end
  now.times do
  block.call
  end
end



grandfather_clock do
    puts "GONG!"
end
