class OrangeTree
  def initialize
  	@height = 0
  	@number_of_oranges = 0
  	@alive = true
  end

  def one_year_passes
    return "A year later, the tree is still dead. :(" if @alive == false
  	@height += 0.4 
  	@number_of_oranges = (@height * 15 - 25).to_i
  	if @height > 10.1
  		@alive = false
  		return "Oh, no! The tree is too old, and has died. :("
  	end
  	return "This year your tree grew to #{@height.round(1)}m tall, and produced #{@number_of_oranges.floor} oranges."
  end

  def count_the_oranges
  	return "A dead tree has no oranges. :(" if @alive == false
  	@number_of_oranges.floor
  end

  def height
  	return "A dead tree is not very tall. :(" if @alive == false
  	@height.round(1)
  end

  def pick_an_orange
  	return "A dead tree has nothing to pick. :(" if @alive == false
  	@number_of_oranges -= 1
  	"Delicious, you now have #{@number_of_oranges.floor} oranges left"
  end
  
end
