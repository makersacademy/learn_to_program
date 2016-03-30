def grandfather_clock &block
  hours = Time.new.hour
  hours -= 12 if hours > 12
  hours.times do 
  	block.call
  end
end