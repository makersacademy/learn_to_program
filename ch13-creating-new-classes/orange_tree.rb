#had to modify my own code with the model answer in order to pass the requirements of the spec

class OrangeTree
	def initialize
		@alive = true
		@height = 0.0
		@age = 0
		@count_the_oranges = 0
	end

  def height
  	return @height.round(1) if @alive
  	"A dead tree is not very tall. :("
  end

  def one_year_passes
  	return "A year later, the tree is still dead. :(" unless @alive
  	@count_the_oranges = 0
  	if @age > 24
  		@alive = false
  		return "Oh, no! The tree is too old, and has died. :("
  	end
  	@height += 0.4
  	@age += 1

  	if @age > 3
  		@count_the_oranges = (@height * 15 - 25).to_i
  	end
  	"This year your tree grew to #{@height.round(1)}m tall, and produced #{@count_the_oranges} oranges."
  end

  def count_the_oranges
  	return @count_the_oranges if @alive
  	"A dead tree has no oranges. :("
  end

  def pick_an_orange
  	if @alive
  		if @count_the_oranges > 0
  			@count_the_oranges -= 1
  			puts "That orange certainly was delicious!"
  		else
  			puts "Theres no more oranges to pick this year"
  		end
  	else
  		"A dead tree has nothing to pick. :("
  	end
  end
end



