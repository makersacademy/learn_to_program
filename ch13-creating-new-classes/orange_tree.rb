class OrangeTree
	def initialize
		@height = 0
		@oranges = 0
		@age = 0
		@dead = false
		puts "A tree has been planted"
	end
	def one_year_passes
		unless @dead
			@height += 0.4
			@height = @height.round(2)
			@age += 1
			if @age < 11
				@oranges += 4
			elsif @age < 21
				@oranges += 8
			elsif @age < 25
				@oranges += 3
			elsif @age >= 25
				@dead = true
				'Oh, no! The tree is too old, and has died. :('
			end
			"This year your tree grew to #{@height}m tall#{@oranges > 1 ? ', and produced ' + @oranges.to_s + ' oranges.' : ''}"
		else
			'A year later, the tree is still dead. :('
		end
	end
	def height
		unless @dead
			@height
		else
			'A dead tree is not very tall. :('
		end

	end
	def count_the_oranges
		unless @dead
			@oranges

		else
			'A dead tree has no oranges. :('
		end
	end
	def pick_an_orange
		unless @dead
			@oranges -= 1
			'yum'
		else
			'A dead tree has nothing to pick. :('
		end
	end
end
