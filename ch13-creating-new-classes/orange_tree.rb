class OrangeTree

	def initialize
		@num_oranges = 0
		@height = 0.0
		@alive = true
		@age = 0
	end

	def one_year_passes
		if @alive != true
			'A year later, the tree is still dead. :('
		elsif @age == 25
			@alive = false
			'Oh, no! The tree is too old, and has died. :('
		else
			@height += 0.4
			@age += 1
			if @age == 10
				@num_oranges = 35
			elsif @age > 10
				@num_oranges += 6
			end
			"This year your tree grew to #{@height.round(1)}m tall, and produced #{@num_oranges} oranges."
		end
	end

	def count_the_oranges
		if @alive
			@num_oranges
		else
			'A dead tree has no oranges. :('
		end
	end

	def height
		if @alive
			@height.round(1)
		else 
			"A dead tree is not very tall. :(" 
		end
	end

	def pick_an_orange
		if @alive && @num_oranges > 0
			@num_oranges = @num_oranges - 1
			"You have picked a very delicious orange!"
		else
			@alive ? "You could not find any oranges." : "A dead tree has nothing to pick. :("
		end
	end
end
