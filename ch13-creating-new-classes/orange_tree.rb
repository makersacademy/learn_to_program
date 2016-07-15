# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  def initialize
    @height = 0
    @age = 0
    @orange_count = 0
    @alive = true
    puts "Your orange tree has been planted!"
  end

  def height
    if @alive == true
      @height.round(1)
    else
      return "A dead tree is not very tall. :("
    end
  end

  def one_year_passes
    @orange_count = 0
    @height += 0.4
    @age += 1
    if @age <= 5
      return "This year your tree grew to #{@height.round(1)}m tall, and produced no oranges."
    elsif @age > 5 && @age <= 25
      @orange_count = (@height * 15) - 25
      return "This year your tree grew to #{@height.round(1)}m tall, and produced #{@orange_count.round} oranges."
    elsif @age == 26
      @alive = false
      return "Oh, no! The tree is too old, and has died. :("
    else
      return "A year later, the tree is still dead. :("
    end
  end

  def count_the_oranges
    if @alive == true
      @orange_count.round
    else
      return "A dead tree has no oranges. :("
    end
  end

  def pick_an_orange
    if @alive == true
      @orange_count -= 1
    else
      return "A dead tree has nothing to pick. :("
    end
  end
end

#orange_tree = OrangeTree.new
#23.times do
#  orange_tree.one_year_passes
#end
