class OrangeTree

	def initialize
		@height = 0
		@age = 0
		@name = "Little Guy"
		@oranges = 0
	end

	def height
		return "A dead tree is not very tall. :(" if @dead
		@height/100.0
	end

	def one_year_passes
		return "A year later, the tree is still dead. :(" if @dead
		if @age < 10
		elsif @age >= 10 and @age < 24
			@oranges = 119
		elsif @age >= 24
			@oranges = 125
		end
		@height += 40
		@age += 1
		if @age == 26
			return die
		end
		"This year your tree grew to #{@height/100.0}m tall, and produced #{@oranges} oranges."
	end

	def count_the_oranges
		return "A dead tree has no oranges. :(" if @dead
		@oranges
	end

	def pick_an_orange
		return "A dead tree has nothing to pick. :(" if @dead
		if @oranges > 0
			@oranges -= 1
			"That was a DELICIOUS orange!"
		else
			"Sorry, there are no more oranges to pick."
		end
	end

	private

	def die
		@dead = true
		"Oh, no! The tree is too old, and has died. :("
	end

end
