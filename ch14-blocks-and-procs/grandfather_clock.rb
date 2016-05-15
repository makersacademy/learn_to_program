def grandfather_clock &block
  current_hour = Time.new.hour % 12
 
 	current_hour.times do
 		block.call
 	end
end