def grandfather_clock &block
  
end 
	hour = Time.new.hour

	if hour == 0
		hour = 12
	end

	if hour >= 13
		hour = hour - 12
	end

	hour.times do block.call
	end
end

grandfather_clock do puts "DONG!"
end