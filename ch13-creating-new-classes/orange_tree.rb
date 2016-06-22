# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  
	def initialize
		@height = 0
		@age = 0
		@orange_count = 0
	end

	def count_the_oranges
		if is_dead?
			return "A dead tree has no oranges. :("
		else
			@orange_count
		end
	end

	def height
		if is_dead?
			return "A dead tree is not very tall. :(" 
		else
			@height
		end
	end

	def pick_an_orange
		if is_dead?
			return "A dead tree has nothing to pick. :("
		else	
			if @orange_count >= 1
				@orange_count =- 1
				puts "That orange was delicious!"
			else
				puts "There are no oranges to pick"
			end
		end
	end

	def one_year_passes
		@age += 1
		@orange_count = 0
		if is_dead? && @age == 26
			@height = 0
			return "Oh, no! The tree is too old, and has died. :("
		elsif is_dead? && @age > 26
			return "A year later, the tree is still dead. :("
		else
			@height = (@height + 0.4).round(1)
			if  @age <= 25
				if @age >= 6
					@orange_count = (@height * 15 - 25).to_i
				end
				return "This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
			end
		end
	end

	def is_dead?
		@age >= 26
	end

end
