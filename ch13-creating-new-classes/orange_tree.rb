# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.

class OrangeTree

  def initialize
    @alive = true
    @height = 0
    @age = 0
    @orange_count = 0
  end

  def height		#returns height of tree
    if @alive
      @height.round(1)
    else
      "A dead tree is not very tall. :("  
    end
  end

  def age		#returns age of tree
    if @alive
      @age
    else
      "A year later, the tree is still dead. :("
    end
  end

  def count_the_oranges			#returns number of oranges
    if @alive
      @orange_count
    else
      "A dead tree has no oranges. :("
    end
  end
 
  def pick_an_orange			#picks an orange
    if @alive
      if @orange_count < 1 
        "You search every branch, but find no oranges"
      else
        @orange_count -= 1
        puts "You pick an orange."
      end
    else
      "A dead tree has nothing to pick. :("
    end
  end

  def one_year_passes		#increases age, height and orange count if tree is alive
  @height += 0.4
  @age += 1    
  @orange_count = ((@height.round(1) * 15) - 25).round if @age >= 5
    if @age == 26
      @alive = false
      "Oh, no! The tree is too old, and has died. :("
    elsif 
      @age > 26 
      "A year later, the tree is still dead. :("
    else  
      "This year your tree grew to #{@height.round(1)}m tall, and produced #{@orange_count} oranges."  
    end
  end

end
