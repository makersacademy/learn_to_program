# /usr/bin/env ruby

def grandfather_clock &block

	hours_passed = Time.new.hour % 12

	hours_passed.times do 
		block.call
	end
end

grandfather_clock do
	puts "DONG!"
end
