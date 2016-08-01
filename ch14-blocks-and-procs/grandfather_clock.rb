def grandfather_clock &block
	now = Time.new.hour
	if now > 12 
		now -= 12
	end
	if now == 0
		now == 12
	end
	now.times do
	  block.call
	end

	block
end
