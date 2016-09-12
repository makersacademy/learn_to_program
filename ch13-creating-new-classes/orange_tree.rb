class OrangeTree

	def initialize
		@height = 0
		@orangeCount = 0
		@age = 0
		@dead = false

		"You have planted an Orange Tree."
	end


	def height
		if @dead
			'A dead tree is not very tall. :('
		else
			@height.round(1)
		end
	end

	def count_the_oranges
		if @dead
			'A dead tree has no oranges. :('
		else
			@orangeCount.round(1)
		end
	end

	def pick_an_orange
		if @orangeCount > 0
			"You just picked a delicious orange! Yummy."
			@orangeCount = @orangeCount.round(1) - 1
		else
			"A dead tree has nothing to pick. :("
		end
	end

	def one_year_passes
		@orangeCount = 0
		@age += 1
	  @height = (@height + 0.4).round(1)
	  if @age ==26
		  @dead = true
		  'Oh, no! The tree is too old, and has died. :('
	  elsif @age >26
		  'A year later, the tree is still dead. :('
	  elsif @age >5
		  @orangeCount = (@height * 15 - 25).round
		  "This year your tree grew to #{@height}m tall, and produced #{@orangeCount} oranges."
	 	end
	end
 end

#ot = OrangeTree.new
#24.times do
#	ot.one_year_passes
#end



# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.
