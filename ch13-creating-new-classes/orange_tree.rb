# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree

  def initialize
    @orangeheight = 3
    @years = 0
    @produce = 0
  end

  def height
    puts "you are #{@orangeheight} tall!"
    one_year_passes
  end

  def one_year_passes
    @years = @years + 1
    @orangeheight = @orangeheight + 0.4
    if @years == 25
      die
    elsif @years > 3
      fruit_produce
    else
       puts "young! still #{@years} old!"
    end
  end

  def fruit_produce
    if @years > 7
      @produce = @produce + 4
      puts "you are #{@years} years old and can produce #{@produce} of fruit!"
    else
      puts "you are #{@years} years old, you cant produce shit yet!"
    end
  end

  def die
    puts "DEAD!"
  end

  def count_the_oranges
    puts @produce
  end

  def pick_an_orange
  end
end

tree = OrangeTree.new
tree.height
tree.height
tree.height
tree.height
tree.height
tree.height
tree.height
tree.height
tree.height
tree.height
tree.height
tree.height
tree.height
tree.height
tree.height
tree.height
tree.height
tree.height
tree.height
tree.height
tree.height
tree.height
tree.height
tree.height
tree.height
