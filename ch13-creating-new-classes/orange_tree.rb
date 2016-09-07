# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.

#SO CLOSE. I spent a long time on my own programme (below in comments) but could not get it past rspec


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
      if @height > 10 && rand(2) > 0
        # tree dies
        @alive = false
        'Oh, no! The tree is too old, and has died. :('
      elsif @height > 2
        # new oranges grow
        @orange_count = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height.round(1)}m tall," +
          " and produced #{@orange_count} oranges."
      else
        "This year your tree grew to #{@height.round(1)}m tall," +
          " but is still too young to bear fruit."
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



=begin
class OrangeTree

  def initialize
    @age = 0
    @total_height = 0
    @fruit = 0
    @alive = true
  end

  def height
    if @alive
    @total_height.round(1)
    else
    puts "A dead tree is not very tall. :("
    end
  end

  def one_year_passes
    if @alive
      @total_height = @total_height + 0.4
      @fruit = 0
      if @total_height > 10 && rand(2) > 0
        @alive = false
        'Oh, no! The tree is too old, and has died. :('
      elsif @total_height > 2
        @fruit = (@total_height * 15 - 25).to_i
        "This year your tree grew to #{@total_height.round(1)}m tall," +
          " and produced #{@fruit} oranges."
      else
        "This year your tree grew to #{@total_height.round(1)}m tall," +
          " but is still too young to bear fruit."
      end
    else
      'A year later, the tree is still dead. :('
    end
  end

  def count_the_oranges
    if @alive
      @fruit
    else
    puts "A dead tree has no oranges. :("
    end
  end

  def pick_the_oranges
    if @fruit > 0
      @fruit = @fruit - 1
      puts "You pick a juicy, delicious orange!"
    else
      "You search every branch, but find no oranges."
    end
  end
end
=end
