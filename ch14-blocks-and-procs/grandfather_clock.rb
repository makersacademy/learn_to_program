def grandfather_clock &block
  hour = Time.new.hour

  # hours = {
  # 	0 => 12,
  # 	13 => 1, 
  # 	14 => 2, 
  # 	15 => 3, 
  # 	16 => 4, 
  # 	17 => 5, 
  # 	18 => 6, 
  # 	19 => 7, 
  # 	20 => 8, 
  # 	21 => 9, 
  # 	22 => 10, 
  # 	23 => 11
  # }
  
  # this_hour = hours[hour]

  # this_hour.times do
  # 	block.call
  # end

  if hour >= 13
    hour = hour - 12
  end

  if hour == 0
    hour = 12
  end
  
  hour.times do
    block.call
  end

end