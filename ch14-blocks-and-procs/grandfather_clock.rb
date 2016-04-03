def grandfather_clock  &block
	hour = Time.new.hour
	if hour == 0
		hour = 12
	end
 	hour >= 13 ? (hour -= 12) : hour
 	hour.times(&block)
end

grandfather_clock do 
	puts "GONG!"
	end
