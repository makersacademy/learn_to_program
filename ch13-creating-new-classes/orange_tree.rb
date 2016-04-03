# Orange tree. Make an OrangeTree class that has a height method that returns its height 
# and a one_year_passes method that, when called, ages the tree one year. Each year the 
# tree grows taller (however much you think an orange tree should grow in a year), and after 
# some number of years (again, your call) the tree should die. For the first few years, it 
# should not produce fruit, but after a while it should, and I guess that older trees produce 
# more each year than younger trees...whatever you think makes the most sense. And, of course, 
# you should be able to count_the_oranges (which returns the number of oranges on the tree) 
# and pick_an_orange (which reduces the @orange_count by 1 and returns a string telling you 
# how delicious the orange was, or else it just tells you that there are no more oranges to 
# pick this year). Make sure any oranges you don’t pick one year fall off before the next year.

# I did not get on with the test when attempting this. Worked through the solution and 
# understand it much better now though ;)

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
      @orange_count = 0
      if @height > 10 && rand(2) > 0
        @alive = false
        'Oh, no! The tree is too old, and has died. :('
      elsif @height > 2
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

ot = OrangeTree.new
23.times do
  ot.one_year_passes
end

puts(ot.one_year_passes)
puts(ot.count_the_oranges)
puts(ot.height)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.height)
puts(ot.count_the_oranges)
puts(ot.pick_an_orange)