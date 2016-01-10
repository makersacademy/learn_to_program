def grandfather_clock &block
  
  now = Time.new.hour
  if now > 12
     now = now - 12
  end
  
  if now == 0
    now = 12
  end
  
  now.times {block.call}
  
end