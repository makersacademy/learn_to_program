def grandfather_clock &block
  hours = Time.new.hour 
  hours > 12 ? hours -= 12 : hours
  hours.times do
  	block.call
  end
end