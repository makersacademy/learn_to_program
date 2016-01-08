class OrangeTree

	def initialize
		@height = 0
		@orange_count = 0
		@alive = true
	end

	def height
		if @alive
			@height.round(1)  #return height, added ound to my answer
		else
			'The tree has died'
		end
	end

	def count_the_oranges
		if @alive
			@orange_count  #return orange_count
		else
			'The tree has died, so there are no oranges'
		end
	end
	def one_year_passes
		if @alive
			@height = @height + 2 # tree grows 2 feet
			@orange_count = 0 # each year all unpicked oranges fall, so reset orange_count to zero
			if @height > 10 && rand(2) > 0 #had missed off && rand(2)...!! # condition is that at 10 feet the tree will die
				@alive = false #so at 10 foot, return @alive = false
				'The tree has died'
			elsif @height > 4 # if tree is <10 it is alive and if it is taller than 4 feet, it will produce oranges
				@orange_count = rand(0..50) #add .to_i?  # tree will product random number of oranges
				'The tree has produced #{@orange_count} oranges.'
			else
				'The tree is not tall enough to grow oranges.'
			end
		else
		'A year later, the tree is dead' # added CP soln, I failed test without
		end
	end


	def pick_an_orange
		if @alive
			if @orange_count > 0
				@orange_count = @orange_count - 1
				'You\'ve picked a delicious orange!'
			else
				'There are no oranges'
			end
		else 
		'A dead tree has nothing to pick' #CP soln added, I left out but couldn't pass tests
		end
	end
end



orange_tree = OrangeTree.new
23.times do 
 	orange_tree.one_year_passes
end

	
# puts(orange_tree.one_year_passes)
# puts(orange_tree.count_the_oranges)
# puts(orange_tree.one_year_passes)
# puts(orange_tree.one_year_passes)
# puts(orange_tree.count_the_oranges)
# puts(orange_tree.one_year_passes)
# puts(orange_tree.one_year_passes)
# puts(orange_tree.count_the_oranges)

# I had to add the bits I missed from CPs solution (x3 final else statements) as rspec said I didn't have enough 'ends'...!!  
# timed out...  can't get to pass on rspec







