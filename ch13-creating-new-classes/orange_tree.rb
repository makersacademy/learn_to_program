# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  def initialize
  	@height = 0.0
  	@age = 0
  	@oranges = 0
  end

  def height
  	if age >= 25
  		return 'A dead tree is not very tall. :('
  	else
  		@height
  	end
  end

  def age
  	@age
  end

  def one_year_passes
  	if @age > 25
  		return 'A year later, the tree is still dead. :('
  	elsif @age < 25
	  	@age += 1
	  	@height += 0.4
	  	@height = @height.round(1) 
	  	@oranges = (@height * 15 - 25).floor unless @age < 6
	  end
  	if @age == 25 
  		return 'Oh, no! The tree is too old, and has died. :('
  	end
  	return "This year your tree grew to #{@height}m tall, and produced #{@oranges} oranges."
  end
end
