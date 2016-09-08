# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  def initialize
    @height = 0
    @orange_count = 0
    @year = 0
    @dead = 0
  end

  def one_year_passes
    @height += 0.4
    @year += 1
    if @year == 26
      @dead = 1
      return "Oh, no! The tree is too old, and has died. :("
    elsif @dead == 1
      return "A year later, the tree is still dead. :("
    else
      unless @year < 6
        oranges = @height * 15 - 25
        @orange_count = oranges
      else
        oranges = 0
      end
      return "This year your tree grew to #{@height.round(1)}m tall, and produced #{oranges.to_i} oranges."
    end
  end

  def height
    if @dead == 0
      return @height.round(1)
    else
      return "A dead tree is not very tall. :("
    end
  end

  def count_the_oranges
    if @dead == 0
      return @orange_count.to_i
    else
      return "A dead tree has no oranges. :("
    end
  end

  def pick_an_orange
    if @dead == 0
      if @orange_count > 0
        return "Mmmmm, delicious juicy freshness."
        @orange_count -= 1
      else
        return "Oh dear, there are no oranges left.  Try next year!"
      end
    else
      return "A dead tree has nothing to pick. :("
    end
  end
end

#test = OrangeTree.new
#27.times do
  #puts test.one_year_passes
#end
