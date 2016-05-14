def grandfather_clock &block
	current_time = (Time.new.hour)
	current_time = case current_time
	when 0, 12
		12
	when 13 .. 23
		current_time - 12
	else
		current_time
	end
	current_time.times(&block)
end

grandfather_clock do 
	puts 'DONG!' 
end
