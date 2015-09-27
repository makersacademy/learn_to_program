=begin
Orange tree.
Make an OrangeTree class that has a height method that returns its height
and a one_year_passes method that, when called, ages the tree one year.
Each year the tree grows taller (however much you think an orange tree should grow in a year),
and after some number of years (again, your call) the tree should die.
For the first few years, it should not produce fruit, but after a while it should,
and I guess that older trees produce more each year than younger trees...
whatever you think makes the most sense.
And, of course, you should be able to count_the_oranges (which returns the number of oranges on the tree)
and pick_an_orange (which reduces the @orange_count by 1 and returns a string telling you how delicious
the orange was, or else it just tells you that there are no more oranges to pick this year).
Make sure any oranges you don’t pick one year fall off before the next year.
=end

class OrangeTree
  @orange_count
  @height
  @age
  @fruit
  @alive

  def initialize
    @orange_count = 0
    @height = 0
    @age = 0
    @fruit = 0
    @alive = true
  end

  def height
    @alive ? @height : "Orange tree is dead"
  end

  def age
    @age
  end

  def one_year_passes
    if @alive
      if @age < 50
        @age += 1
        @height += 0.5.round(1)
        if @age > 2
          @fruit = 10 * age
          puts "The tree is #{@age} years old, #{@height} tall and bears #{@fruit}"
        else
          puts "The tree is #{@age} years old, #{@height} tall but too young to fruit"
        end
      else
        @alive = false
        @fruit = 0
        puts "The tree has died aged #{@age}"
      end
    else
      puts "The tree died some time ago"
    end
  end

  def count_the_oranges
    @alive ? @fruit : "No oranges on a dead tree"
  end

  def pick_an_orange
    if @alive
      if @fruit > 0
        @fruit -= 1
        puts "The oranges are delicious this year, #{@fruit} remaining"
      else
        puts "No more oranges to pick this year"
      end
    else
      puts "Can't pick from a dead tree"
    end
  end
end


orange_tree = OrangeTree.new()
40.times {orange_tree.one_year_passes}
puts (orange_tree.count_the_oranges)
puts(orange_tree.height)
puts(orange_tree.pick_an_orange)
20.times {orange_tree.one_year_passes}
puts (orange_tree.count_the_oranges)
puts(orange_tree.height)
puts(orange_tree.pick_an_orange)

# puts(ot.one_year_passes)
# puts(ot.count_the_oranges)
# puts(ot.one_year_passes)
# puts(ot.one_year_passes)
# puts(ot.one_year_passes)
# puts(ot.one_year_passes)
# puts(ot.one_year_passes)
# puts(ot.height)
# puts(ot.count_the_oranges)
# puts(ot.pick_an_orange)