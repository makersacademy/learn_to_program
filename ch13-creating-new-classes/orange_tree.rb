#Orange tree
class OrangeTree #classes beginn with capital letter!
	def initialize #if the tree starts living...
		@height = 0 
		@orange_count = 0 
		@alive = true 
	end 
	def height 
		if @alive 
			@height.round(1)
		else 
			"A dead tree is not very tall. :("
		end 
	end 
	def count_the_oranges
		if @alive 
			@orange_count
		else "A dead tree has no oranges. :("
		end 
	end 
	def one_year_passes
		if @alive
			@height = @height + 0.4
			@height.round(1)
			@orange_count = 0 #each year the oranges fall off the tree and there is place for new ones

			if @height > 10.1 #let's say the tree lives 5 years
				@alive = false 
				"Oh, no! The tree is too old, and has died. :("
			elsif @height > 3 #in the first years the tree does not give oranges
				@orange_count = (@height * 15-25).to_i
				"This year your tree grew to #{height.round(1)}m tall, and produced #{@orange_count} oranges." 
			else # if younger than three years = no oranges
				"Tree grew to #{height.round(1)} meters but did not give any oranges yet. Be patient son"
			end 
		else #if dead 
			"A year later, the tree is still dead. :("
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
			"A dead tree has nothing to pick. :("
		end 
	end 
end 
	supertree= OrangeTree.new
	3.times do 
		supertree.one_year_passes
	end 



