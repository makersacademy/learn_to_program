# Orange tree. Make an OrangeTree class that has a height method that returns
# its height and a one_year_passes method that, when called, ages the tree one
# year. Each year the tree grows taller (however much you think an orange
# tree should grow in a year), and after some number of years (again, your
# call) the tree should die. For the first few years, it should not produce
# fruit, but after a while it should, and I guess that older trees produce
# more each year than younger trees...whatever you think makes the most
# sense. And, of course, you should be able to count_the_oranges (which returns
# the number of oranges on the tree) and pick_an_orange (which reduces the
# @orange_count by 1 and returns a string telling you how delicious the orange
# was, or else it just tells you that there are no more oranges to pick this
# year). Make sure any oranges you don’t pick one year fall off before the
# next year.


class OrangeTree

  def initialize
    @height = 0
    @orange_count = 0
    @alive = true
    @age = 0
  end

#note: specs do height with decimals, hence .round to 2 dp
  def height
    if @alive
      return @height
    else
      return "A dead tree is not very tall. :("
    end
  end

#Note: For the first few years, it should not produce
# fruit, but after a while it should, and I guess that older trees produce
# more each year than younger trees...whatever you think makes the most
# sense.
  def one_year_passes
    if @alive
      @age = @age + 1
      @height = @height.round(1) + 0.4
      @orange_count = 0
        if @age > 25
          @alive = false
          return "Oh, no! The tree is too old, and has died. :("
        elsif @age > 3
          @orange_count = (@height * 15 - 25).to_i
          return "This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
        else
          return "Your tree is only #{@age} years old and cannot yet produce fruit."
        end
      else
        return "A year later, the tree is still dead. :("
    end
  end

  def count_the_oranges
    if @alive
      return @orange_count
    else
      return "A dead tree has no oranges. :("
    end
  end

  def pick_an_orange
    if @alive
       while @orange_count >= 1 do
         @orange_count -= 1
          return "You picked an orange. It was delicious! :D"
      end
     else
       return "A dead tree has nothing to pick. :("
     end
  end


end
