
class OrangeTree
	def initialize
		@height			= 0
		@alive 			= true
		@orange_count	= 0
	end

	def height
		if @alive
		   @height
		else
			"A dead tree is not very tall. :("
		end
	end

	def one_year_passes
		if @alive
			@height = @height + 0.4
			@height = @height.round(1)
			@orange_count = 0

			if @height > 10 
				@alive = false
				"Oh, no! The tree is too old, and has died. :("
			elsif @height > 2
				@orange_count = (@height * 15 - 25).to_i
				"This year your tree grew to #{height}m tall," +
				" and produced #{@orange_count} oranges."
			else
				"This year your tree grew to #{@height}m tall," +
				" but is still too young to bear fruit."
			end
		else
			"A year later, the tree is still dead. :("
		end
	end

			
		

	

	def count_the_oranges
		 if @alive
		 	@orange_count
		 else
		 	"A dead tree has no oranges. :("
		 end
	end

	def pick_an_orange
		if @alive
			@orange_count -= 1
			if @orange_count > 0
				 "You pick a juicy, delicious orange!"
			else
				 "You search every branch, but find no oranges."
			end
		else
		"A dead tree has nothing to pick. :("
		end
	end
end

ot = OrangeTree.new
puts(ot.one_year_passes)
puts(ot.count_the_oranges)
puts(ot.height)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.height)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.height)
puts(ot.count_the_oranges)
puts(ot.pick_an_orange)



	