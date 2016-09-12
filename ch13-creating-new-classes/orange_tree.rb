# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  def initialize
    puts "You plant the orange tree seed."
    @height = 0
    @age = 0
    @orange_count = 0
  end

  def height
    puts "The tree is #{@height} ft tall."
  end

  def count_oranges
    puts "There are #{@orange_count.floor} oranges left."
  end

  def one_year_passes years = 1
    @height += 0.4
    @age += years
    if @age > 5 && @age < 25
      puts "The tree bears new fruit, get picking!"
      @orange_count = @height * 15 - 25
    end
    if @age >= 25
      puts "After 25 fruitful years, the tree sadly dies."
      exit
    else
      puts "The tree grows another #{years} year(s)."
    end
  end

  def pick_an_orange
    if @orange_count == 0
      puts "Damn, no more oranges left to pick!"
    else
      @orange_count -= 1
      puts "You pick an orange. These oranges sure are delicious!"
    end
  end

end

my_tree = OrangeTree.new
my_tree.one_year_passes
my_tree.one_year_passes
my_tree.one_year_passes
my_tree.one_year_passes
my_tree.one_year_passes
my_tree.one_year_passes
my_tree.pick_an_orange
my_tree.pick_an_orange
my_tree.pick_an_orange
my_tree.count_oranges
my_tree.height
my_tree.one_year_passes
my_tree.pick_an_orange
my_tree.one_year_passes(10)
my_tree.height
my_tree.count_oranges
my_tree.pick_an_orange
my_tree.count_oranges
my_tree.one_year_passes(10)
