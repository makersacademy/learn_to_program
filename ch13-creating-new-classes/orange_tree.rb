# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  def initialize
    @height = 0
    @orange = 0
    @age = 0
  end

  def one_year_passes
    @orange = 0
    @age = @age + 1
    if @age == 25
      puts "Oh, no! The tree is too old, and has died. :("
    elsif @age > 25
      puts "A year later, the tree is still dead. :("
    elsif @age < 6
      @height = @height + 0.4
      puts "This year (#{@age}) your tree grew to #{@height.round(1)}m tall, and produced #{@orange.to_i} oranges."
    else
      @height = @height + 0.4
      @orange = (@height * 15 - 25)
      puts "This year (#{@age}) your tree grew to #{@height.round(1)}m tall, and produced #{@orange.to_i} oranges."
    end
  end

  def height
    if @age < 25
      return @height
    else
      puts "A dead tree is not very tall. :('"
    end
  end

  def count_the_oranges
    if @age < 25
      puts "The tree has #{@orange.to_i} oranges (Year number #{@age})"
    else
      puts "A dead tree has no oranges. :("
    end
  end

  def pick_an_orange
    if @orange > 0
      @orange = @orange - 1
      puts "Hmmmm, nice orange! You have #{@orange.to_i} left"
    elsif @orange <= 0
      puts "No orange to pick"
    else
      puts "A dead tree has nothing to pick. :("
    end
  end
end


=begin
tree = OrangeTree.new

26.times do
tree.one_year_passes
end

tree.count_the_oranges

13.times do
tree.pick_an_orange
end

tree.count_the_oranges
=end
