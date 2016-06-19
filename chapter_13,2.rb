#Orange tree
class OrangeTree #classes beginn with capital letter!
	def initialize #if the tree starts living...
		@height = 0 
		@orange_count = 0 
		@alive = true 
	end 
	def height 
		if @alive 
			@height 
		else 
			"Tree is not living"
		end 
	end 
	def count_the_oranges
		if @alive 
			@orange_count
		else "Tree is not living. Therefore, there are no oranges"
		end 
	end 
	def one_year_passes
		if @alive
			@height = @height + 3
			@orange_count = 0 #each year the oranges fall off the tree and there is place for new ones

			if @height > 15 #let's say the tree lives 5 years
				@alive = false 
				"The orange tree died, plant a new one"
			elsif @height > 6 #in the first years the tree does not give oranges
				@orange_count = (@height * 10).to_i
				"This year your tree grew to #{@height}meters and produced 
				#{@orange_count} oranges." 
			else # if younger than three years = no oranges
				"Tree grew to #{@height}meters but did not give any oranges yet. Be patient son"
			end 
		else #if dead 
			"Time passes but what is dead remains dead"
		end 
	end 
	def pick_an_orange
		if @alive 
			if @orange_count > 0 
				@orange_count = @orange_count -1 
				"Enjoy your orange!"
			else 
				"Your tree has no oranges"
			end 
		else 
			"Are you serious? You try to pick oranges from a dead tree?"
		end 
	end 
end 
	supertree= OrangeTree.new
	3.times do 
		supertree.one_year_passes
	end 

puts (supertree.one_year_passes)
puts (supertree.count_the_oranges)
puts (supertree.height)
puts (supertree.one_year_passes)
puts (supertree.height)


