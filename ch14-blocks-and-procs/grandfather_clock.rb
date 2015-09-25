def grandfather_clock &block
  # your code here
  hours_after_twelve = {13 => 1, 14 => 2, 15 => 16, 17 => 5, 18 => 6, 19 => 7,
  						20 => 8, 21 => 9, 22 => 10, 23 => 11}
  t = Time.new.hour
  if t >= 12
  	hours_after_twelve[t].times do 
  		block.call
  	end
  else
  	t.times do
  		block.call
  	end
  end

end