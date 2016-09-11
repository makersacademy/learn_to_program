# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  def initialize
    @height = 0
    @living = true
    @orange_count = 0
    @age = 0
  end

  def height
    if @living
      @height.round(2)
    else
    "A dead tree is not very tall. :("
    end
  end

  def one_year_passes
    if @age <= 25
    @age = @age + 1
    @height = @height + 0.4
    @orange_count = 0
    if @age == 26
    @living = false
    "Oh, no! The tree is too old, and has died. :("
    elsif @age <= 5
     "This year your tree grew to #{@height.round(2)}m tall, and produced no oranges."
    else
    @orange_count = (@height * 15) - 25
     "This year your tree grew to #{@height.round(2)}m tall, and produced #{@orange_count.to_i} oranges."
    end
   else
    "A year later, the tree is still dead. :("
  end
end


  def count_the_oranges
    if @age <= 5
      @orange_count = 0
      "sorry the tree is a baby, there are no oranges on this tree"
    elsif @age <= 25
    @orange_count.to_i
    else
      "A dead tree has no oranges. :("
    end
  end

      def pick_an_orange
        if @living
        if @orange_count > 0
        @orange_count = @orange_count - 1
        puts "you have picked one orange"
      else
        puts "sorry there are no oranges to pick"
      end
    else "A dead tree has nothing to pick. :("
    end
  end
end

tree = OrangeTree.new
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.pick_an_orange
