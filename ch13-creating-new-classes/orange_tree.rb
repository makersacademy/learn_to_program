# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.

class OrangeTree

  def initialize
    @age = 0
    @height = 0
    @growth_rate = 0.4
    @age_first_fruit = 6
    @age_of_death = 25
    @orange_count = 0
    @alive = true
  end

  def height
    if @alive == false
      puts "A dead tree is not very tall."
    else
      @height = (@age * @growth_rate).round(2)
      return "#{@height}m"
    end
  end

  def one_year_passes
    @age += 1
    if @age < 25
      puts "This year your tree grew to #{self.height} tall, and produced #{self.count_the_oranges} oranges."
    elsif @age == 25
      @alive = false
      puts "Oh, no! The tree is too old, and has died. :("
    elsif @age > 25
      puts "A year later, the tree is still dead. :("
    end
  end

  def count_the_oranges
    if @age < @age_first_fruit
      return @orange_count
      #puts "Your tree has no oranges."
    elsif @alive == false
      puts "A dead tree has no oranges. :("
    else
      return @orange_count = (@height * 15 - 25).to_i
    end
  end

  def pick_an_orange
    if @orange_count > 0
      @orange_count -= 1
    elsif @alive == false
      puts "A dead tree has nothing to pick. :("
    end
  end

end

=begin
tree = OrangeTree.new
23.times do
  tree.one_year_passes
end

tree.count_the_oranges
tree.height

5.times do
  tree.one_year_passes
end

tree.height
tree.count_the_oranges
tree.pick_an_orange
=end
