# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  def initialize 
  	@height = 0
  	@years = 0
  	@oranges = 0
  	@dead = false
  end

  def height
  	if @dead == false 
  	return @height.round(1)
  	else
  	return 'A dead tree is not very tall. :('
  	end
  end

  def one_year_passes
  	@height += 0.4
  	@years += 1
  	if @dead == false
  		if @years == 26
  			@dead = true
  			return 'Oh, no! The tree is too old, and has died. :('
  		elsif @years >= 5 && @years <= 26
  		@oranges = ((@height * 15)-25)
  		return "This year your tree grew to #{@height.round(1)}m tall, and produced #{@oranges.to_i} oranges."
  		else
  		return "This year your tree grew to #{@height.round(1)}m tall, and produced #{@oranges.to_i} oranges."  			
  		end
  	else
  	return 'A year later, the tree is still dead. :('
  	end
  end

  def count_the_oranges
  	if @dead == false 
  		@oranges.to_i
  	else
  		return 'A dead tree has no oranges. :('
  	end
  end

  def pick_an_orange
  	if @dead == false 
  	@oranges -= 1
  	else
  		return 'A dead tree has nothing to pick. :('
  	end
  end
end

tree = OrangeTree.new
24.times do tree.one_year_passes end
	puts tree.one_year_passes
	print tree.one_year_passes





