class Dice

	def initialize
		rolling
	end

	def rolling
		@number_showing = 1 + rand(6)
	end

	def showing
		@number_showing
	end

	def cheat
		showing
	end
		
end

puts Dice.new.cheat