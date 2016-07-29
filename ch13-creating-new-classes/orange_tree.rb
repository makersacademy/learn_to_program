# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.

class OrangeTree

  def initialize
    @orange_count = 0
    @height = 0
    @age = 0
    @alive = true
  end

  def height # Returns tree height
    if @alive
      @height.round(2)
    else
      "A dead tree is not very tall. :("
    end
  end

  def age
    if @alive
      @age
    else
      "The tree is dead"
    end
  end

  def one_year_passes # Ages the tree one year
    if @alive
      @age += 1
      @height += 0.4
      @orange_count =  0 # No old oranges left

      if @age == 26
        @alive = false
        "Oh, no! The tree is too old, and has died. :("
      elsif @age > 5
        @orange_count = (height * 15 - 25)
        "This year your tree grew to #{@height.round(2)}m tall, and produced #{@orange_count.to_i} oranges."
      else
        "The tree is now #{@height.round(2)}m tall, but is too young to bear fruit"
      end
    else
      "A year later, the tree is still dead. :("
    end
  end

  def count_the_oranges # Number of oranges on the tree
    if @alive
      @orange_count.to_i
    else
      "A dead tree has no oranges. :("
    end
  end

  def pick_an_orange # Reduces count_the_oranges by 1 and returns string
    if @alive
      if @orange_count == 0
        "There are no oranges"
      else
        @orange_count -= 1
        "You pick a juicy, delicious orange"
      end
    else
      "A dead tree has nothing to pick. :("
    end
  end
end

ot = OrangeTree.new
