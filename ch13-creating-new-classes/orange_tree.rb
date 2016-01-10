class OrangeTree
  	def initialize
  		@oranges = 0 #at first(initialize) on the tree there should be zero oranges.
  		@height = 0  #at first the height of the tree is zero.
  		@alive = true #It's alive :true.
  		@age = 0 	#initialized at zero.
 	end

 	def height
 		if @alive == true
 			return @height  #this method returns height if the tree is alive.
 		else 
 			return 'A dead tree is not very tall. :(' #from the spec!
 		end
 	end

 	def one_year_passes
 		if @alive == false  #if the tree is dead nothing to do.
 			return 'A year later, the tree is still dead. :('
 		end

 		@age += 1 #each year the age 
 		@height += 0.4
 		@height = @height.round(1) # to avoid too decimal numbers.
 		if @age == 5	
 			@oranges = 5 #when the tree is 5 it starts to have oranges(5).
 		elsif @age > 5 #after that every year it produces 6 oranges.
 			@oranges += 6
 		else
 			@oranges = 0 
 		end

 		if @age == 26  #when it has 26 years it dieds.
 			@alive = false
 		end

 		if @alive  
 			return "This year your tree grew to #{@height}m tall, and produced #{@oranges} oranges."
 		elsif @alive == false
 			return 'Oh, no! The tree is too old, and has died. :('
 		
 		end 
 	end

 	def count_the_oranges
 		 if @alive == true
 		 	return @oranges 
 		 else
 		 	return 'A dead tree has no oranges. :('
 		 end
 	end

 	def pick_an_orange
 		if @alive == true
 			@oranges -= 1
 			return @oranges
 		else
 			return 'A dead tree has nothing to pick. :('
 		end
 	end

end

