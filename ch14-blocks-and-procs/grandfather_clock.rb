def grandfather_clock &block
    def time(x)
	 if x == 0
		x = 12
	 elsif x > 12
		x = x - 12
	 else
		x
	 end
    end
	
	hour = Time.new.hour
	time(hour).times do
            block.call
        end
end

grandfather_clock do
    puts "DONG!"
end