class OrangeTree
	def initialize 
    	@height = 0
    	@age = 0
    	@oranges = 0
    	@harvest = 0
    	@drop = 0
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
			@oranges
		else
			"A dead tree has no oranges. :("
		end
	end

	def one_year_passes
		if @alive
			@height = @height + 0.4
			@oranges = 0
			if @height > 10.4
				@alive = false
				"Oh, no! The tree is too old, and has died. :("
			elsif @height > 2
				@oranges = (@height * 15 - 25).to_i
				"This year your tree grew to #{@height.round(1)}m tall,"+
				" and produced #{@oranges} oranges."
			else 
				"This year your tree gre to #{height.round(1)}m tall,"+
				" but is still too young to bear fruit."
			end
		else
			"A year later, the tree is still dead. :("
		end
	end
    
	def pick_an_orange
		if @alive
			if @oranges > 0
				@oranges -= 1 
				"You pick a juicy, delicious orange!"
			else
				"You search every branch, but find no oranges."
			end
		else
			"A dead tree has nothing to pick. :("
		end
	end
end