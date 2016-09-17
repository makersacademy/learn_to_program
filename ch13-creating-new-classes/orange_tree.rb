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

    puts "Your tree has been planted."
  end

  def height
    puts "Your tree is currently #{(@height = @age * @growth_rate).round(2)}m in height."
  end

  def one_year_passes
    @age += 1
    puts "Your tree is now #{@age}"
    if @age == 25
      puts "Ah I'm sorry, your tree just died. But it lived till it was 25 and had a good life."
      exit
    end
    puts
  end

  def count_the_oranges
    if @age < @age_first_fruit
      @orange_count
      puts "Your tree has no oranges."
    else
      @orange_count = (@height * rand(15..25)).to_i
      puts "Your tree has #{@orange_count} oranges."
    end
  end

  def pick_an_orange
    if @orange_count > 0
      puts "Mmm you've picked an orange. How yummy - it's very juicy."
      @orange_count -= 1
      puts "You tree now has #{@orange_count} oranges left."
    else
      "You can't pick any oranges, as there aren't any I'm afraid. Try again in a year or so."
    end
  end

end

=begin
tree = OrangeTree.new
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
=end
