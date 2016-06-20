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
    @orange_count = 0 #oranges die every year
    @height += 0.4
    @age += 1
    if @age <= 5
      return "This year your tree grew to #{@height.round(1)}m tall, and produced no oranges."
    elsif @age > 5 && @age < 26
      @orange_count = ((@height * 15) - 25)
      return "This year your tree grew to #{@height.round(1)}m tall, and produced #{@orange_count.round} oranges."
    elsif @age > 25
      @alive = false
      return "Oh, no! The tree is too old, and has died. :("
    else
      return "A year later, the tree is still dead. :("
    end
  end

  def pick_an_orange
    if @alive
      if @orange_count > 0
        @orange_count -= 1
        'You pick a juicy, delicious orange!'
      else
        'You search every branch, but find no oranges.'
      end
    else
      'A dead tree has nothing to pick. :('
    end
  end
end

# ot = OrangeTree.new
# 23.times do
#   ot.one_year_passes
# end

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

