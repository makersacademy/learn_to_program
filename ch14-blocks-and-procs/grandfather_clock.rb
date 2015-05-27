# /usr/bin/env ruby

def hours proc

	hours_passed = Time.new.hour % 12

	hours_passed.times do 
		proc.call
	end
end

chime = Proc.new do
	puts "DONG!"
end

puts hours(chime)