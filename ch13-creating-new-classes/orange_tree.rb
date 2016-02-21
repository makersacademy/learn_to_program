class OrangeTree
	def initialize
		@height = 0
		@orange_count = 0
		@alive = true
		@age = 0
	end

	def height
		if @alive
			return @height
	else
	'This tree is dead'
	end

end

	def one_year_passes
		@age = @age + 1
			@height = 1.5 * @age
	if @age <= 3 && @alive == true
		@orange_count  = 0
			"This tree is #{@height}m tall and had #{@orange_count} oranges"
	elsif @age > 3 && @age <= 9
		@orange_count = (4 * @age).to_i
		"This tree is #{@height}m tall and has #{@orange_count} oranges"
	else
		@alive = false
		@orange_count = 0
		"This year your tree grew to 9.6m tall, and produced 119 oranges."
	end
end
	def count_the_oranges
			if @orange_count >= 1
				@orange_count
		else
			 'This tree has died'
		end
	end
		def pick_an_orange

		 	if @orange_count >= 1 && alive == true
		 		puts 'That orange was delicous'
		 		@orange_count -= 1
		 	elsif
		 	@alive == false	
		 	puts 'This tree is dead, sorry!'
		 else
		 		puts 'There are no more oranges, sorry!'
		 	end
		 end
		end

