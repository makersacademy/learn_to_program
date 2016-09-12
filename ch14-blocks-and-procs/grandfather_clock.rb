def grandfather_clock &block
	# number of hours since midnight
	hour = Time.new.hour
	if hour > 12
		hour = hour - 12
	elsif hour == 0
		hour = 12
	else
		hour
	end
	hour.times do
		yield
	end
end

grandfather_clock do
	puts 'DONG!'
end

