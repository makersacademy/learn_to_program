# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


	class OrangeTree
		attr_accessor :height, :age, :oranges

	def initialize 
		@height = 0
		@age = 0
		@oranges = 0
	end

	def one_year_passes
		@age += 1 	
			if @age <= 5	
				@height += 0.4.round(1)
			end						#tree ages one year
			if @age > 5 && @age <= 25 
				@height += 0.4.round(1) 
				@oranges = (@height * 15 - 25)
			end
			if @age == 26
				return 'Oh, no! The tree is too old, and has died. :('
			end
			if @age > 26 
				return 'A year later, the tree is still dead. :('
			else 
				return "This year your tree grew to #{@height.round(1)}m tall, and produced #{@oranges.round} oranges."	
			end
	end 

	def count_the_oranges
		@age > 25 ? 'A dead tree has no oranges. :(' : @oranges.round(1)
	end

	def height 
		if @age < 26
			return @height.round(1)
		else 
			return "A dead tree is not very tall. :("	
		end		#return trees height 
	end 


	def pick_an_orange 
		if @age > 26
			"A dead tree has nothing to pick. :(" 
		elsif
			@oranges -= 1 
			return "You just smushed a delicious juicy orange into your fat mouth. Only #{@oranges.round(1)} oranges left on the tree!"
		else @oranges < 1 && @age >= 25
			return "There are no more oranges to pick. Why don't you try waiting a year you greedy little fuck..."
		end 
	end
	end


