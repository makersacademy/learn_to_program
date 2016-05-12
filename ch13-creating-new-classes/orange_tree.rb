# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.

class OrangeTree
  attr_accessor :age, :orange_count, :height, :alive

  def initialize
    @age = 0
    @orange_count = 0
    @height = 0
    @alive = true
  end

  def height
    @alive ? @height.round(1) : "A dead tree is not very tall. :("
  end

  def count_the_oranges
    @alive ? @orange_count : "A dead tree has no oranges. :("
  end

  def one_year_passes
    if @alive

      @height = @height + 0.4
      @age += 1
      @orange_count = 0

      if @age > 25
        @alive = false
        'Oh, no! The tree is too old, and has died. :('

      elsif @age > 5 && @age <= 25
        @orange_count = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height.round(1)}m tall," +
          " and produced #{@orange_count} oranges."
      elsif @age <= 5
        "This year your tree grew to #{@height.round(1)}m tall," +
          " but is still too young to bear fruit."
      end

    else
      'A year later, the tree is still dead. :('
    end

  end

  def pick_an_orange
    if @alive && @orange_count > 0
      @orange_count -= 1
      'You pick a juicy, delicious orange!'
    elsif @alive && @orange_count == 0
      'You search every branch, but find no oranges.'
    else
      'A dead tree has nothing to pick. :('
    end

  end

end

ot = OrangeTree.new
23.times do
ot.one_year_passes
end
