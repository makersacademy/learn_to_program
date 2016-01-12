class OrangeTree
	def initialize 
		@height  = 0
		@alive   = true
		@oranges = 0
	
	end

	def height
		if @alive == true
			@height.round(1)
		else
			'A dead tree is not very tall. :('
		end
	end

	def one_year_passes
		if @alive   == true
			@height  = @height + 0.4
			@oranges = 0

			if @height > 10.01 # ¬¬ really guys? really? ¬¬ 
				@alive = false
				'Oh, no! The tree is too old, and has died. :('
			elsif @height > 2
				@oranges = (@height * 15 - 25).to_i
				"This year your tree grew to #{@height.round(1)}m tall," + " and produced #{@oranges} oranges."
			else
				"This year your tree grew to #{@height.round(1)}m tall," + " but is still too young to bear fruit."
			end	
							
		else
			'A year later, the tree is still dead. :('
	
		end		
	end

	def count_the_oranges
		if @alive == true
			@oranges
		else
			'A dead tree has no oranges. :('
		end	
	end

	def pick_an_orange
		if @alive == true #need to be alive to give oranges
			if @oranges > 0
				@oranges = @oranges - 1 #need to take off and output how many left
				'You pick a juicy, delicious orange!'
			else
				'You search every branch, but find no oranges.'
			end
		else
			'A dead tree has nothing to pick. :('
			
		end
	end
  # your code here
end


