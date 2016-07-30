class OrangeTree

	def initialize
	@oranges = 0
	@height = 0
	@age = 0
	end

	def height
		if alive?
			@height
		else
			puts 'A dead tree is not very tall. :('
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
			puts 'A dead tree has nothing to pick. :('
		else
			@oranges -= 1
			puts "What a juicy tasty fleshy citrus!"
		end
	end

	def one_year_passes
		@oranges = 0
		@height += 0.4
		if @age > 5
			@oranges += (@height * 15 - 25)
		end
		@age += 1
		if !alive?
		puts "Oh, no! The tree is too old, and has died. :("
		elsif @age > 25
		puts "A year later, the tree is still dead. :("
		end

		puts "This year your tree grew to #{@height}m tall, and produced #{@oranges} oranges."
	end

	private

	def alive?
		@age < 25
	end
end
