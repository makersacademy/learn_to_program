def grandfather_clock &block
	time = (Time.new.hour)
	if time > 12
		time -= 12
	end
	time.times do
		block.call
	end

end