#Does not pass tests if the wording is not exactly as in possible solutions.
#So had to copy that. Anyway no major difficulties with this one.

class OrangeTree
  
  def initialize
  	@orange_count=0
  	@height = 0
  	@alive = true
  	puts "You planted an orange tree!"
  end

  def height
  	if @alive	
  		@height
  	else
  		"A dead tree is not very tall. :("
  	end
  end

  def one_year_passes
  	
  	if @alive
  		@height = (@height + 0.4).round(1)
  		@orange_count = 0
  		if @height>10
  			@alive = false
  			"Oh, no! The tree is too old, and has died. :("
  		elsif @height>2
  			@orange_count = (@height*15-25).to_i
  			"This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
  		else
  			"This year your tree grew to #{@height}m tall, but is still too young to bear fruits."
  		end
  	else
  		'A year later, the tree is still dead. :('
  	end
  end

  def count_the_oranges
  	if @alive
  		@orange_count
  	else
  		"A dead tree has no oranges. :("
  	end
  end

  def pick_an_orange
  	if @alive
  		if @orange_count>0
  			@orange_count = @orange_count-1
  			puts "It was very delicious."
  		else
  			puts "No more oranges to pick this year."
  		end
  	else
  		"A dead tree has nothing to pick. :("
  	end
  end

end




