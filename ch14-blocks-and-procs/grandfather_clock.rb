def grandfather_clock &block
  clicks = Time.new.hour 
  
  clicks = 12 if clicks == 0
  clicks >= 13 ? (clicks-12) : clicks
  
  clicks.times do 
    block.call
  end
end
