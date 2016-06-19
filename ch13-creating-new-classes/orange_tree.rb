# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree

  def initialize          #qualities of tree when new tree made
    @height = 0           #not grown yet
    @orange_count = 0     #no oranges
    @alive = true         #not dead yet
  end

  def height
     if @alive
       @height.round(1)       #gives height of tree at current year
     else
       "A dead tree is not very tall. :("
     end
  end

  def count_the_oranges
     if @alive
       @orange_count    #number of oranges the tree has
     else
       "A dead tree has no oranges. :("
     end
  end

  def one_year_passes
    if @alive
      @height = @height + 0.4  #tree grew by 0.4 after a year

      if @height.round(1) > 10
        @alive = false     #after one year the tree is 26 and dead
        "Oh, no! The tree is too old, and has died. :("
      elsif @height > 2     #tree is now older than 5 and has oranges
        @orange_count = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height.round(1)}m tall, and produced #{@orange_count} oranges."
      else
        "This year your tree grew to #{@height.round(1)}m tall."
      end

   else
     "A year later, the tree is still dead. :("       #height does not increase as tree is dead
   end
  end

  def pick_an_orange
    if @alive
      if @orange_count > 0          #if the tree has oranges
        @orange_count = @orange_count -1   #pick one
        "You pick an orange"
      else
        "There are no oranges to pick"  #tree has no oranges
      end
    else
      "A dead tree has nothing to pick. :("  #else statement if @alive=false
    end
  end
end
