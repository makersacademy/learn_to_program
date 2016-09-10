def grandfather_clock &block
	hour = Time.new.hour # current hour 

	#convert hour format to 12 hours
	if hour >= 13
		hour = hour - 12
	end

	if hour == 0 || hour == 24 # at 0 and 24, the hour is 12
		hour = 12
	end

	hour.times do # how many times the clock should sound
		block.call 
	end
end

grandfather_clock do 
	puts "DONG!!"
end