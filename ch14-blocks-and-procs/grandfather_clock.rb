
def grandfather_clock &block
	time = Time.new.hour % 12
	if time == 0
		time = 12
	end
	time.times do block.call end
end

grandfather_clock do 
	puts "DONG!"
end
