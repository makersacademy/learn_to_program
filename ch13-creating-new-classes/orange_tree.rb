# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
	
	@@age_to_start_fruit = 6
	@@age_to_die = 25
	@@growth_rate = 0.4


  def initialize
    @height = @age = @orange_count = 0
    @alive = true
  end

  def height
    @alive ? @height.round(1) : 'A dead tree is not very tall. :('
  end

  def count_the_oranges
    @alive ? @orange_count : 'A dead tree has no oranges. :('
  end

  def one_year_passes
    if @alive
   		@age +=1
    	@height += 0.4
    	@orange_count = 0
    	if @age > @@age_to_die
    		@alive = false
      	'Oh, no! The tree is too old, and has died. :('
  	  elsif @age >= @@age_to_start_fruit
      	@orange_count = new_oranges
      	"This year your tree grew to #{@height.round(1)}m tall, and produced #{@orange_count} oranges."
    	else
      	"This year your tree grew to #{@height.round(1)}m tall, but is still too young to bear fruit."
  	  end
  	else
      'A year later, the tree is still dead. :('
    end
  end

  def pick_an_orange
    if @alive
      if @orange_count > 0
        @orange_count -= 1
        'You pick a juicy, delicious orange!'
      else
        'You search every branch, but find no oranges.'
      end
    else
      'A dead tree has nothing to pick. :('
    end
  end

  def new_oranges
  	(height * 15 - 25).round(0)
  end
end