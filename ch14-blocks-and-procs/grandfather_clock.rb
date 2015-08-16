def grandfather_clock &chime
	hours = Time.new.hour.to_i 
	hours = 24 if hours == 0 
	if hours > 12
		num_of_chimes = hours - 12
	else
		num_of_chimes = hours
	end
	num_of_chimes.times{chime.call}
end