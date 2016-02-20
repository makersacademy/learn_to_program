class OrangeTree
  
	def initialize
		@alive 			= true
		@height 		= 0
		@orange_count 	= 0
	end

	def height
		if @alive
			@height.round(1)
		else
			"A dead tree is not very tall. :("
		end  
	end

	def age
		"Your tree is #{@age} years old."
	end

	def count_the_oranges
		if @alive
			@orange_count
		else
			"A dead tree has no oranges. :("
  		end
  	end

  	def one_year_passes
  		if @alive
  			@height += 0.4
  			@height
  			@orange_count = 0

  			if @height > 10.1 # && rand(2) > 0
  				@alive = false
  				"Oh, no! The tree is too old, and has died. :("
  			elsif @height > 2
  				@orange_count = (@height * 15 - 25).to_i
  				"This year your tree grew to #{@height.round(1)}m tall, and produced #{@orange_count} oranges."
  			else
  				"This year your tree grew to #{@height.round(1)}m tall," + "but it is still too young to bear fruit."
  			end
  		else
  			"A year later, the tree is still dead. :("
  		end
  	end

	def pick_an_orange
		if @alive 
			if @orange_count > 0
				@orange_count -= 1
				"That was delicious!"
			else
				"There are no oranges."
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