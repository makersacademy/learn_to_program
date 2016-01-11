def grandfather_clock(&block)
  
  dongs = Time.new.hour
  
  if dongs > 12
    dongs -= 12
  end
  
  dongs.times do
    block.call
  end

end  
  
