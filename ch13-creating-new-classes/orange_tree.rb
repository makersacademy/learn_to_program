class OrangeTree
  # your code here
  def initialize
  	@orange_count = 0
  	@age = 0
  	@height = 0
  	@dead = false
  end

  def height
  	if @dead == true
  		return "A dead tree is not very tall. :("
  	end	
  	@height/100.0
  end
  
  def one_year_passes
  	if @age < 10
 		elsif @age >= 10 and @age < 24
 			@orange_count = 119
 		elsif @age >= 24
 			@orange_count = 125
 		end
 		@height += 40
 		@age += 1
 		if @age == 26
 			@dead = true
 			return "Oh, no! The tree is too old, and has died. :("
 		end
 		if @age >26
 			return 'A year later, the tree is still dead. :('
 			
 		end	
 		"This year your tree grew to #{@height/100.0}m tall, and produced #{@orange_count} oranges."
  	
  end	

  def count_the_oranges
  		if @dead == true
  			return "A dead tree has no oranges. :("
  		end	
  	 return @orange_count
  end
  
  def pick_an_orange
  		if @dead == true
  			return "A dead tree has nothing to pick. :("
  		end	
  	@orange_count -= @orange_count
  	if @orange_count !=0
	  	return " Oranges was very delicious"
	else
	  	return "no oranges left"
    end

  end
  	 	 
end