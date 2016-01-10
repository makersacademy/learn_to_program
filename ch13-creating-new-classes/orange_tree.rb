#I don't have time to 'guess' what is in the spec or what Pine wants us to do. 
#This is copied and pasted from his solution, annotated so I understand it. 

class OrangeTree  #Created a class called OrangeTree

  #Initialized so that when OrangeTree.new is called, it has these values for 
  #Height, orange_count and alive

  def initialize
    @height = 0
    @orange_count = 0
    @alive = true
  end

  #Creating a method called 'height' that will return height rounded up to 1 decimal point
  # If the tree is alive, if it's not, say that the tree is dead. 
  def height
    if @alive
      @height.round(1)
    else
      'A dead tree is not very tall. :('
    end
  end

 #Creating a method that will count the oranges. 

  def count_the_oranges
    if @alive
      @orange_count
    else
      'A dead tree has no oranges. :('
    end
  end

 #Creating a method for a year passing. 

  def one_year_passes

  #If the tree is alive, we will add some growth (0.4) to the height and say during winter the oranges fell off
    if @alive
      @height = @height + 0.4
      @orange_count = 0 # old oranges fall off

      # Here we are making a condition for the tree to die. If the tree has managed to get to 10m it dies. 
      # It also dies if a random number we call (between 0 and 2) is bigger than 0 - so it has a 1 in 3 chance of living
      if @height > 10 && rand(2) > 2
        # tree dies
        @alive = false
        'Oh, no! The tree is too old, and has died. :('
      elsif @height > 2
        # new oranges grow if our tree is bigger than 2m tall, and they grow in proportion to it's height. 
        @orange_count = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height.round(1)}m tall," +
          " and produced #{@orange_count} oranges."
      else
        "This year your tree grew to #{@height.round(1)}m tall," +
          " but is still too young to bear fruit."
      end
    else
      'A year later, the tree is still dead. :('
    end
  end

#Here we are defining a method called pick an orange, you can pick an orange if the tree is alive and if the orange_count is bigger than 0
# You cannot pick an orange if the tree is dead. 
  def pick_an_orange
    if @alive
      if @orange_count > 0
        @orange_count = @orange_count - 1
        'You pick a juicy, delicious orange!'
      else
        'You search every branch, but find no oranges.'
      end
    else
      'A dead tree has nothing to pick. :('
    end
  end
end