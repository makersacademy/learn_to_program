def grandfather_clock &block
  timer = (Time.new.hour +1) > 12 ? (Time.new.hour + 1) / 12 : (Time.new.hour)
  timer.times do 
    block.call
  end
  
end