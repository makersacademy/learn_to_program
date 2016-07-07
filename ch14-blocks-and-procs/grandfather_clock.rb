def grandfather_clock &block

	(Time.new.hour%12).times{yield}			#for each hour of the current time (Time.new.hour) expressed in 12h blocks yield to the block


end