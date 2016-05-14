# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  def initialize
  	@height = 0
  	@age = 0
  	@no_of_oranges = 0
  end

  def height
  	if @age > 25
  		"A dead tree is not very tall. :("
  	else
  		@height.round(1)
  	end
  end

  def age
  	@age
  end

  def one_year_passes
  	@no_of_oranges = 0
  	@age += 1
  	if @age <= 25
  		@height += 0.4
  	elsif @age == 26
  		return "Oh, no! The tree is too old, and has died. :("
  	else
  		return "A year later, the tree is still dead. :("
  	end

  	if @age >= 6 && @age <= 25
  		@no_of_oranges = (@height * 15 - 25).to_i
  	end
  	"This year your tree grew to #{@height.round(1)}m tall, and produced #{@no_of_oranges} oranges."
  end

  def count_the_oranges
  	if @age > 25
  		"A dead tree has no oranges. :("
  	else
  		@no_of_oranges
  	end
  end

  def pick_an_orange
  	if @age > 25
  		"A dead tree has nothing to pick. :("
  	elsif @no_of_oranges > 0 
  		@no_of_oranges -= 1
  		"That was delicious!"
  	else
  		"Sorry, there are no oranges to pick."
  	end
  end
end

# ot = OrangeTree.new

# 23.times do
#   ot.one_year_passes
# end

# puts ot.one_year_passes #'This year your tree grew to 9.6m tall, and produced 119 oranges.'
# puts ot.count_the_oranges #119
# puts ot.height #9.6
# puts ot.one_year_passes #'This year your tree grew to 10.0m tall, and produced 125 oranges.'
# puts ot.one_year_passes #'Oh, no! The tree is too old, and has died. :('
# puts ot.one_year_passes #'A year later, the tree is still dead. :('
# puts ot.one_year_passes #'A year later, the tree is still dead. :('
# puts ot.one_year_passes #'A year later, the tree is still dead. :('
# puts ot.height #'A dead tree is not very tall. :('
# puts ot.count_the_oranges #'A dead tree has no oranges. :('
# puts ot.pick_an_orange #'A dead tree has nothing to pick. :('




