# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
	def initialize
		@age = 0
		@oranges = 0
		@height = 0
	end
	def one_year_passes
		@oranges = 0
		@age = @age + 1
		@height = @height + 0.4
		
		if @age > 5 && @age < 26
			@oranges = (@height * 15 - 25).to_i
			 "This year your tree grew to #{@height}m tall, and produced #{@oranges} oranges."
		end
		if @age == 25
			 "Oh, no! The tree is too old, and has died. :("
		end
		if @age > 25
			 'A year later, the tree is still dead. :('
		end
	end
	def count_the_oranges
		if @age < 26
		 @oranges
		else
		 "A dead tree has no oranges. :("
		end
	end
	def pick_an_orange
		if @age < 26
			@oranges = @orange -1
		else
			 "A dead tree has nothing to pick. :("
		end
	end

	def height
		if @age < 26
		@height.round(1)
	else
		"A dead tree is not very tall. :("
	end
end

end
OrangeTree.new
23.times do |one_year_passes|
	
end
OrangeTree.height

