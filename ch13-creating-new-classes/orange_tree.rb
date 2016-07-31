# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree

  def initialize name
    @name = name
    @orange_count = 0
    @height = 0
    @age = 0
    @alive = true
  end

  def height
    if @alive
      puts "current height is #{@height}m"
    end
  end

  #ages the tree by one year
  def one_year_passes
    @height = (@height + 0.4).round(1)
    @age += 1
    # make the oranges fall off
    @orange_count = 0 if @orange_count > 0
    if @age >= 25
      @alive = false
      puts "the tree has just died"
      exit
    end
  end

  def count_the_oranges
    if @alive
      # tree produces oranges at a rate of (height * 15 - 25) per year
      if @age < 5
        @orange_count = 0
        puts "Your tree is #{@age} years old and is too young to grow oranges"
      else
        @orange_count = (@age*(@height*15 - 25)).round(0)
      end
      puts "number of oranges is: #{@orange_count}"
    end
  end

  def pick_an_orange
    if @alive
      #reduce orange_count by 1 and tell you they're delicious
      if @orange_count>=1
        @orange_count -= 1
        puts "the orange was delicious!!"
      else
        puts "there aren't any oranges to pick!!"
      end
    end
  end

end

tree = OrangeTree.new ("Walter")
tree.height
tree.one_year_passes
tree.one_year_passes
tree.count_the_oranges
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.count_the_oranges
tree.one_year_passes
tree.count_the_oranges
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.height
tree.one_year_passes
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.pick_an_orange
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.one_year_passes
