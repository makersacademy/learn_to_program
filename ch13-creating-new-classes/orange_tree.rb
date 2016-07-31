class OrangeTree
  def initialize
    @height = 0.0
    @age = 0
    @life = 26
    @count_the_oranges = 0.0
    @growth_rate = 0.4
  end

  def height
    if @age < @life
      return @height.round(1)
    else
      return "A dead tree is not very tall. :("
    end
  end

  def one_year_passes
    @age = @age + 1

    if @age < @life
      @height = @height + @growth_rate
      count_the_oranges
      return "This year your tree grew to #{@height.round(1)}m tall, and produced #{@count_the_oranges.round} oranges."
    elsif @age == @life
      return "Oh, no! The tree is too old, and has died. :("
    elsif @age > @life
      return "A year later, the tree is still dead. :("
    end

  end

  def count_the_oranges
    if @age < @life
      if @age >= 5
        @count_the_oranges = (@height * 15 - 25).to_i
      end
    else
      return "A dead tree has no oranges. :("
    end
  end

  def pick_an_orange
    if @age < @life
      if @count_the_oranges > 0
        @count_the_oranges = @count_the_oranges - 1
        return "Delicious orange!! Currently there's only #{@count_the_oranges} left."
      elsif @count_the_oranges <= 0
        return "No more oranges left this year!"
      end
    else
      return "A dead tree has nothing to pick. :("
    end
  end
end

#ot = OrangeTree.new
#num = 1
#28.times do
#  puts num
#  puts(ot.one_year_passes)
#  num = num+1
#end
