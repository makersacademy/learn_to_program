class OrangeTree
	def initialize
	@oranges = 0
	@height = 0
	@age = 0
	end

	def height
		if alive?
			@height.round(1)
		else
			'A dead tree is not very tall. :('
		end

	end

	def count_the_oranges
		if alive?
			@oranges
		else
			'A dead tree has no oranges. :('
		end
	end

	def pick_an_orange
		if @oranges <= 0 
			"Sorry there are no oranges to pick this year"
		elsif alive? == false
			'A dead tree has nothing to pick. :('
		else
			@oranges -= 1
			"What a juicy tasty fleshy citrus!"
		end
	end

	def one_year_passes
		@oranges = 0
		@height += (0.4)
		if @age >= 5
			@oranges += (@height * 15 - 25).to_i
		end
		@age += 1
		if @age == 26
		"Oh, no! The tree is too old, and has died. :("
		elsif @age > 26
		"A year later, the tree is still dead. :("
		else
		"This year your tree grew to #{@height.round(1)}m tall, and produced #{@oranges.round} oranges."
		end
	end

	private

	def alive?
		@age < 26
	end
end

