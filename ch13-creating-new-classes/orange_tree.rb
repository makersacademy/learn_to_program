# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.

class OrangeTree
  
  GROWTH = 0.4
  FRUITING_AGE = 5
  MAX_AGE = 25

  def initialize
  	@height = 0
  	@orange_count = 0
  	@age = 0
  	@dead = false
  end

  def dead?
  	@dead
  end

  def height
  	if !dead?
  		@height.round(1)
  	else
  		'A dead tree is not very tall. :('
  	end
  end

  def count_the_oranges
  	if !dead?
  		@orange_count.to_int
  	else
  		'A dead tree has no oranges. :('
  	end  	
  end

  def pick_an_orange
  	if dead?
  		'A dead tree has nothing to pick. :('
  	elsif count_the_oranges >= 1
  		@orange_count -= 1
  		"Delicious!"
  	else
  		"No oranges on the tree :("
  	end
  end

  def one_year_passes
		@age += 1

		if !dead? && (@age > MAX_AGE)
			@dead = true
			"Oh, no! The tree is too old, and has died. :("	
		elsif dead?
		  "A year later, the tree is still dead. :("
		else
			@height += GROWTH
			if @age > FRUITING_AGE
				@orange_count = @height * 15 - 25
			end
			"This year your tree grew to #{height}m tall, and produced #{count_the_oranges} oranges."
		end
  end
end
