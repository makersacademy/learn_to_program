class Orange_tree

	def initialize
		@height = 0
		@orange_count = 0
		@alive = true
		puts "Your orange tree has started to grow."
	end
	def height
	# height method returns height
		if @alive
			@height
			puts "Your tree is #{@height} metres tall."
		else
			"A dead tree is not very tall..."
		end
	end
	def one_year_passes
		if @alive
			@height = @height + 1.5
			@orange_count = 0

			if @height > 10 
				# tree dies
				@alive = false
				puts "Oh no! Tree has died."
			elsif @height > 2
				# new oranges grow
				# Older trees produce more each year than younger trees.
				@orange_count = (@height * 15 - 25).to_i
				puts "Your tree has is now #{@age} years old and #{@height} metres tall."
				puts "Tree produced #{@orange_count} oranges."
			else
				puts "This year tree grew to #{@height} metres but is still too young to bear fruit."
			end
		else
			puts "A year later, the tree is still dead.."
		end
	end
	def count_the_oranges
	# count_the_oranges method returns number of oranges on the tree
		if @alive
			@orange_count
			puts "There are #{@orange_count} oranges on the tree."
		else
			puts "A dead tree has no oranges.."
		end
	end
	def pick_an_orange	
		if @alive
			if @orange_count > 0
				@orange_count = @orange_count - 1
				puts "That orange was so delicious!"
			else
				"There are no oranges left."
			end
		else
			"A dead tree has nothing to pick.."
		end
	end
end


tree = Orange_tree.new
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.height
# tree.orange_count
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
# tree.orange_count
# tree.pick_an_orange
# tree.pick_an_orange
tree.height
tree.one_year_passes

tree.one_year_passes
