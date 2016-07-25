# in order to pass the rspec please follow the below rates of growth,
# orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at
# a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings
# we're looking for in the responses.

class OrangeTree
  #constants are declared/defined
  @@years_without_orange = 5
  @@tree_max_age = 26
  @@annual_growth = 0.4

  def initialize
    #instance_variables are initialized
    @num_oranges = 0; @tree_dead = false
    @age = 0; @height = 0
  end

  def one_year_passes
    if @tree_dead
      "A year later, the tree is still dead. :("
    else
      @age += 1; @height = (@@annual_growth * @age).round(1)
      produce_oranges
      if @age == @@tree_max_age
        @tree_dead = true #the tree dies now.
        "Oh, no! The tree is too old, and has died. :("
      else
        "This year your tree grew to #{@height}m tall, and " +
        "produced #{@num_oranges} oranges."
      end
    end
  end

  def count_the_oranges
    return @tree_dead ? "A dead tree has no oranges. :(" : @num_oranges
  end

  def height
    return @tree_dead ? "A dead tree is not very tall. :(" : @height
  end

  def pick_an_orange
    return "A dead tree has nothing to pick. :(" if @tree_dead
    if @num_oranges > 0
      @num_oranges -= 1
      "The orange was very delicious."
    else
      "There are no more oranges to pick this year"
    end
  end

  private
  def produce_oranges
    #produces oranges if the tree is older than 5 yaers.
    @age <= @@years_without_orange ? @num_oranges = 0 :
    @num_oranges = (@height * 15 - 25).to_i
  end
end

tree = OrangeTree.new
