class OrangeTree
  
  def initialize
  	@height = 0
  	@orange_count = 0
  	@alive = true
  	puts "A tree is born! Its current height is #{@height}m and it has #{@orange_count} oranges."
  end

  def height
  	@alive == true ? @height.round(1) : "A dead tree is not very tall. :("
  end

  def count_the_oranges
    @alive == true ? @orange_count : "A dead tree has no oranges. :("
  end

  def one_year_passes
  	if @alive
  		@height += 0.4
  		@orange_count = 0

  		if @height > 10 && rand(2) > 0
  			@alive = false
  			"Oh, no! The tree is too old, and has died. :("
  		elsif @height > 2
  			@orange_count = (@height * 15 - 25).to_i
  			return "This year your tree grew to #{(@height).round(1)}m tall, and produced #{@orange_count} oranges."
  		else
  			"This year your tree grew to #{@height}m tall but is still too young to bear fruit."
  		end
  	else
  		"A year later, the tree is still dead. :("
  	end	
  end

  def pick_an_orange
  	if @alive
  		if @orange_count > 0
  			@orange_count -= 1
  			"Mmm the orange was #{rand(100)}% juicy!"
  		else
  			"Currently no oranges to pick this year I'm afraid!"
  		end
  	else
  		"A dead tree has nothing to pick. :("
  	end
  end
end