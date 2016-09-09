class OrangeTree
  def initialize
    @height = 0
    @age = 0
    @alive = true
    @orange_count = 0
  end

  def height
 	if @alive
 		return @height
  	else
  		return "A dead tree is not very tall. :("
  	end
  end

  def one_year_passes
    @orange_count = 0
  	if @alive
  		if @age <= 5
  			@age = @age + 1
  			height_under_5 = @height + 0.4
  			@height = height_under_5.round(1)
			return "This year your tree grew to #{@height}m tall, but it is still too young to produce oranges."
		end

  		if @age > 5 && @age < 25
  			@age = @age + 1
  			height_over_5 = @height + 0.4
  			@height = height_over_5.round(1)
  			@orange_count =  (@height * 15 - 25).to_i
  			return "This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
  		end

  		if @age >= 25
  			@alive = false
  			return "Oh, no! The tree is too old, and has died. :("
  		end
  	else
  		return "A year later, the tree is still dead. :("
  	end
  end

  def count_the_oranges
  	if @alive
	  	return @orange_count
	else
		return "A dead tree has no oranges. :("
	end
  end

  def pick_an_orange
  	if @alive
  		@orange_count = @orange_count - 1
  	else
  		return "A dead tree has nothing to pick. :("
  	end
  end
end