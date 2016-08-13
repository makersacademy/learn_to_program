# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (tree_height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.

class OrangeTree
    
  def initialize
    @tree_height = 0
    @age = 0
    @orange_count = 0  
  end
  
  def one_year_passes
    # always ages by 1 year
    @age = @age + 1
    # height grows taller by 0.4
    @tree_height = @tree_height + 0.4
    # in first 5 years, no oranges should grow
    if @age <= 5
      @orange_count = 0
      "This year your tree grew to #{@tree_height.round(1)}m tall, but is still too young to bear fruit."
    elsif @age > 5 && @age < 26
      @orange_count = (@tree_height * 15 - 25).to_i
      "This year your tree grew to #{@tree_height.round(1)}m tall, and produced #{@orange_count} oranges."
    elsif @age == 26
        "Oh, no! The tree is too old, and has died. :("
    else
        'A year later, the tree is still dead. :('
    end
  end
  
  def height
    if @age >= 26
        'A dead tree is not very tall. :('
    else
    # return tree_height
    @tree_height.round(1)
    end
  end
  
  def pick_an_orange
    if @age < 26
      if @orange_count > 0
        @orange_count -= 1
        "You just picked a delicious orange!"
      else
        "There are no oranges to pick this year"
      end
    elsif @age >= 26
      "A dead tree has nothing to pick. :("
    end
  end
  
  def count_the_oranges
    if @age >= 26
      'A dead tree has no oranges. :('
    else
    # returns current number of oranges
      @orange_count
    end
  end
  
end

# ot = OrangeTree.new

# puts(ot.one_year_passes)
# puts(ot.count_the_oranges)
# puts(ot.height)
# puts(ot.one_year_passes)
# puts(ot.one_year_passes)
# puts(ot.one_year_passes)
# puts(ot.one_year_passes)
# puts(ot.one_year_passes)
# puts(ot.height)
# puts(ot.count_the_oranges)
# puts(ot.pick_an_orange)

=begin
27.times do
 puts ot.one_year_passes
end
=end