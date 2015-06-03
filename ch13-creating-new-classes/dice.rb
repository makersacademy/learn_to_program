class Die
 def initialize 
 	roll
 end
 def roll
 	@face = 1 + rand(6)
 end
 def show
 	@face
 end
 def cheat num
 	if num > 0 && num <=6
 	@face = num
 	else
 	puts "Dice not adjusted to impossible amount"	
	end
 end
end

mike = Die.new

puts mike.roll
puts mike.show
puts mike.cheat(6)
puts mike.show
puts mike.cheat(7)
puts mike.show