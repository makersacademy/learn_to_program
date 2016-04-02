class OrangeTree
  def initialize
  	@height = 0.0
  	@age = 1
  	@orange_count = 0
  	@alive = true
  end

  def height
  	if @alive == false
  		return "A dead tree is not very tall. :("
  	else
  		return @height.round(1)
  	end
  end

  def one_year_passes
  	if @alive == false
  		return "A year later, the tree is still dead. :("
  	end
  	@orange_count = 0
  	@height += 0.4
  	@age += 1
  	if @height > 10.1
		@alive = false
		return "Oh, no! The tree is too old, and has died. :("
	end
	if @age >= 5 
		@orange_count += (@height * 15 -25).to_i
	end
	return "This year your tree grew to #{@height.round(1)}m tall, and produced #{@orange_count} oranges."
  end

  def count_the_oranges
  	if @alive == false
  		return "A dead tree has no oranges. :("
  	else
  		return @orange_count
  	end
  end

  def pick_an_orange
  	if @alive == false
  		return "A dead tree has nothing to pick. :("
  	elsif @orange_count < 1
  		puts "There were no oranges to pick"
  	else 
  		@orange_count -=1
  		puts "That orange was delicious"
  	end
  end

  def orange_count
  	if @alive == false
  		return "A dead tree has nothing to pick. :("
  	else
  		return @orange_count
  	end
  end

end

trevor = OrangeTree.new
