class OrangeTree

	def initialize
		@age = 0
		@height = 0
		@oranges = 0
		puts 'A new Orange Tree is planted.'
	end

	def height
		@height
	end

	def one_year_passes
		@height += 10
	end

	def tree_die
		OrangeTree = nil
	end

	def produce_fruit
		Oranges + 1
		# don't produce any fruit for a few years
		#produce more fruit when older
	end

	def count_the_oranges
		@oranges = 
	end


	def pick_an_orange
		
		
		if orangeTotal > 1
			puts "The orange was amazing!"
		else
			puts "The oranges are fini for this year"
		end
	end

	def end_of_year
		#removes all oranges from the tree
	end
