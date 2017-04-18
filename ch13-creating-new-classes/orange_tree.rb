# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  # your code here
  def initialize
    @age = 0
    @height = 0
    @orange_count = 0
    @tree_alive = true
  end

  def height
    if @tree_alive
      return @height
    else
       return 'A dead tree is not very tall. :('
    end
  end

  def one_year_passes

     @age += 1
     @height += 0.4
     @height = @height.round(1)


    if @age == 26
      @tree_alive = false
      return "Oh, no! The tree is too old, and has died. :("
    elsif @age > 26
      @tree_alive = false
      return "A year later, the tree is still dead. :("
    elsif @age < 5
      @orange_count = 0
      return "This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
    else
      @orange_count = (@height * 15 - 25).round
      return "This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
    end
  end

  def pick_an_orange
    @orange_count = @orange_count - 1
    if @tree_alive == false
      return "A dead tree has nothing to pick. :("
    else
      return "You picked an orange, you have #{@orange_count} oranges."
    end
  end

  def count_the_oranges
    if @tree_alive == false
      return "A dead tree has no oranges. :("
    else
      return @orange_count
    end
  end
end

tree = OrangeTree.new
