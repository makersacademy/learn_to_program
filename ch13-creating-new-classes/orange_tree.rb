# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.



class OrangeTree
	
	def initialize
		@height = 0
		@orange_count = 0
		@years = 0
		@dead = false

	end

		def height # returns height - increments for each year
			if @dead == true
				"A dead tree is not very tall. :("
			else
				@height.round(1)
			end
		end

		def one_year_passes
				@years = @years + 1
				@height = @height + 0.4
				@orange_count = 0

				if @years == 26
					@dead = true
					'Oh, no! The tree is too old, and has died. :('

				elsif @years > 26
					'A year later, the tree is still dead. :('

				elsif @years <= 5
					@orange_count = (@height * 15 - 25).floor
					 "your tree is #{@years} years old"
					
				elsif @years >= 6
				    @orange_count = (@height * 15 - 25).floor
					"This year your tree grew to #{@height.round(2)}m tall, and produced #{@orange_count} oranges."

				end
		
		end

		def count_the_oranges
			if @dead == true
				'A dead tree has no oranges. :('
			else
				@orange_count
			end
		end

		def pick_an_orange
			if @dead == true
				'A dead tree has nothing to pick. :('
				else
					if @orange_count == 0
						"Sorry, no oranges"
					else
						@orange_count = @orange_count -1
						"What a lovely orange! only #{@orange_count} oranges left"
					end
				end

		end

end
