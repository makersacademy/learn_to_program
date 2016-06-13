# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  
  def initialize
    @oranges = 0
    @height = 0
    @age = 0
    @alive = true
  end    
    
  def height
    if @alive
      @height.round(1)
    else
      'A dead tree is not very tall. :('
    end
  end
      
  def one_year_passes
    if @alive
      @oranges = 0
      @height += 0.4
      @age += 1
      if @age > 25
        @alive = false
        return 'Oh, no! The tree is too old, and has died. :('
      end
      if @age > 5
        @oranges = (@height * 15 - 25).floor
        "This year your tree grew to #{@height.round(1)}m tall, and produced #{@oranges} oranges."
      else
        "This year your tree grew to #{@height.round(1)}m tall, and produced no oranges."
      end
    else
      'A year later, the tree is still dead. :('
    end
  end
  
  def pick_an_orange
    if @alive
      @oranges -= 1 if @oranges > 0 # should add a feedback message here
    else
      'A dead tree has nothing to pick. :('
    end
  end
  
  def count_the_oranges
    if @alive
      @oranges
    else
      'A dead tree has no oranges. :('
    end
  end
  
end
