class OrangeTree

	def initialize
		@num_oranges = 0
		@height = 0.0
		@alive = true
		@age = 0
	end

	def one_year_passes
		if @alive != true
			"A year later the tree is still dead."
		elsif @age == 50
			@alive = false
			"Oh, no! The tree is too old, and has died."
		else
			@height += 0.2
			@age += 1
			if @age == 10 then @num_oranges = 30 elsif @age > 10 then @num_oranges += 10 end
			"This year your tree grew to #{@height}m tall, and produced#{@num_oranges} oranges."
		end
	end

	def coun_the_oranges
		if @alive then @num_oranges else "A dead tree has no oranges!" end
	end

	def height
		if @alive then @height else "A dead tree is not very tall." end
	end

	def pick_an_orange
		if @alive && @num_oranges > 0
			@num_oranges = @num_oranges - 1
			"You have picked a very delicious orange!"
		else
			@alive ? "You could not find any oranges." : "The tree is dead, no oranges can be found"
		end
	end
end