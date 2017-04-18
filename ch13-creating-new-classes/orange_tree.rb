# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  # your code here
 
  
  def initialize
      @alive = true
      @age = 0
      @height = 0
      @orange_count = 0
  end
  
  def one_year_passes
    if @age == 25
        @age += 1
        @alive = false
        return 'Oh, no! The tree is too old, and has died. :('
        
    end
      
    if @alive    
        @age += 1
        @height += 0.4
        @orange_count = (@height * 15 - 25).round(0) unless @age <= 5
        "This year your tree grew to #{@height.round(1)}m tall, and produced #{@orange_count} oranges."
    else
        return 'A year later, the tree is still dead. :('
    end
  end
  
  def height
      if @alive
          return @height.round(1)
      else
          return 'A dead tree is not very tall. :('
      end
  end
  
  def count_the_oranges
      if @alive
          return @orange_count
      else
          return 'A dead tree has no oranges. :('
      end
  end
 
  
  def pick_an_orange
      if @alive
          if @orange_count > 0
            puts 'You\'ve picked up a delicious orange'
            @orange_count -= 1
          else
            return 'No oranges left'
          end
      else
          return 'A dead tree has nothing to pick. :('
      end
  end
      
      
      
end
