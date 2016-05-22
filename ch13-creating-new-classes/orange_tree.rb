# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.

class OrangeTree
  
  attr_accessor 'height','count_the_oranges'

  def initialize
    @height = 0.0
    @count_the_oranges = 0
    @dead = false
  end

  def one_year_passes
    if @dead == true
      return  "A year later, the tree is still dead. :("
    elsif @height > 9.9
      @dead = true
      @count_the_oranges = "A dead tree has no oranges. :("
      @height = "A dead tree is not very tall. :("
      return "Oh, no! The tree is too old, and has died. :("    
    else 
      @height = (@height+0.4).round(1)
      @count_the_oranges = (@height*15-25).to_i if @height >= 2.4
      return "This year your tree grew to #{@height}m tall, and produced #{@count_the_oranges} oranges."
    end
  end

  def pick_an_orange
    return "A dead tree has nothing to pick. :(" if @dead == true
    if @count_the_oranges > 0
      @count_the_oranges -= 1
      return "Mmmm, that orange was scrupmtious"
    else
      return "There aren't any oranges on the tree"
    end
  end

end