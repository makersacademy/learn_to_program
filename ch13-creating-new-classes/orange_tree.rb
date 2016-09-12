class OrangeTree

	def initialize
		@height = 0
		@orange_count = 0
		@alive = true
		# puts "Your orange tree has started to grow."
	end
	def height
	# height method returns height
		if @alive
			@height.round(1)
			# "Your tree is #{@height} metres tall."
		else
			"A dead tree is not very tall. :("
		end
	end
	def count_the_oranges
	# count_the_oranges method returns number of oranges on the tree
		if @alive
			@orange_count
			# puts "There are #{@orange_count} oranges on the tree."
		else
			"A dead tree has no oranges. :("
		end
	end
	def one_year_passes
		if @alive
			@height = (@height + 0.4).round(2)
			@orange_count = 0
			if @height > 10 
				# tree dies
				@alive = false
				"Oh, no! The tree is too old, and has died. :("
			elsif @height > 2 
				# new oranges grow
				# Older trees produce more each year than younger trees.
				@orange_count = (@height * 15 - 25).to_i
				"This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
			else
				"This year your tree grew to #{@height}m tall, but is still too young to bear fruit."
			end
		else
			"A year later, the tree is still dead. :("
		end
	end
	def pick_an_orange	
		if @alive
			if @orange_count > 0
				@orange_count = @orange_count - 1
				"That orange was so delicious!"
			else
				"There are no oranges left."
			end
		else
			"A dead tree has nothing to pick. :("
		end
	end
end


ot = OrangeTree.new
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes


puts ot.one_year_passes
# tree.one_year_passes
# tree.one_year_passes
# # tree.orange_count
# # tree.pick_an_orange
# # tree.pick_an_orange
# tree.height
# tree.one_year_passes

# tree.one_year_passes
