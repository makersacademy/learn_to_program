# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.
=begin
class OrangeTree

  def initialize
    @height = 0
    @orange_count = 0
    @alive = true
  end

  def height
    if @alive
      @height.round(1)
    else
      'A dead tree is not very tall. :('
    end
  end

  def count_the_oranges
    if @alive
      @orange_count
    else
      'A dead tree has no oranges. :('
    end
  end

  def one_year_passes
    if @alive
      @height = @height + 0.4
      @orange_count = 0 # old oranges fall off
      if @height > 10.1
        # tree dies
        @alive = false
        'Oh, no! The tree is too old, and has died. :('
      elsif @height > 2
        # new oranges grow
        @orange_count = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height.round(1)}m tall, and produced #{@orange_count} oranges."
      else
        "This year your tree grew to #{@height.round(1)}m tall, but is still too young to bear fruit."
      end
    else
      'A year later, the tree is still dead. :('
    end
  end

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
=end
=begin
tree = OrangeTree.new
23.times do
  tree.one_year_passes
end

tree.one_year_passes
tree.count_the_oranges
tree.height

5.times do
  tree.one_year_passes
end

tree.height
tree.count_the_oranges
tree.pick_an_orange
=end


class OrangeTree

  def initialize
    @age = 0
    @height = 0
    @growth_rate = 0.4
    @age_first_fruit = 6
    @age_of_death = 26
    @orange_count = 0
    @alive = true
  end

  def height
    if @alive == false
      "A dead tree is not very tall. :("
    else
      @height
    end
  end

  def one_year_passes
    @age += 1
    if @age < @age_of_death
      @height = (@age * @growth_rate).round(2)
      "This year your tree grew to #{self.height}m tall, and produced #{self.count_the_oranges} oranges."
    elsif @age == @age_of_death
      @alive = false
      "Oh, no! The tree is too old, and has died. :("
    elsif @age > @age_of_death
      "A year later, the tree is still dead. :("
    end
  end

  def count_the_oranges
    if @age < @age_first_fruit
      @orange_count
    elsif @alive == false
      "A dead tree has no oranges. :("
    else
      @orange_count = (@height * 15 - 25).to_i
    end
  end

  def pick_an_orange
    if @orange_count > 0
      @orange_count -= 1
    elsif @alive == false
      "A dead tree has nothing to pick. :("
    end
  end

end
