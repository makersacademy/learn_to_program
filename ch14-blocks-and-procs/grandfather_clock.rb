def grandfather_clock &block
	time_now = Time.new.hour
	time_now = (time_now - 12) if time_now > 12
	time_now = 12 if time_now == 0
	time_now.times {block.call}
end

