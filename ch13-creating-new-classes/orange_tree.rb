#comment out and copy Chris Pine to make it pass
=begin
class OrangeTree
  def initialize
    @age = 0
    @height = 0
    @orange = 0
    @alive = true
    puts "You have a new orange tree!"
  end

  def height
    @alive ? @height : "Your tree has died."
  end

  def one_year_passes
    if @alive
      @age += 1
      @height = @age * 0.5
      @orange = 0

      if (@age > 20) && rand(2) > 0
        @alive = false
        "Your tree is too old! It has died."
      elsif @age > 5
        @orange = @age * 5 + rand(2) * rand(10) - rand(2) * (10) #make it more random
        "Your tree is #{@age} years old and #{@height}m tall. It produced #{@orange} oranges this year."
      else
        "Your tree is #{@age} year#{"s" unless @age == 1} old and #{@height}m tall. It's still too young to produce fruit."
      end
    else
      "Your tree has died."
    end
  end

  def count_the_oranges
    if @alive
      @orange
    else
      "Your tree has died."
    end
  end

  def pick_an_orange
    if @alive
      if @orange > 0
        @orange -= 1
        "You pick a delicious orange!"
      else
        "There are no more oranges to pick this year."
      end
    else
      "Your tree has died."
    end
  end
end
=end

class OrangeTree
  def initialize
    @height = 0
    @orange_count = 0
    @alive = true
  end

  def height
    if @alive
      @height
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
      @height = @height.round(2) + 0.4
      @orange_count = 0 # old oranges fall off

      if @height > 10 #&& rand(2) > 0
        # tree dies
        @alive = false
        'Oh, no! The tree is too old, and has died. :('
      elsif @height > 2
        # new oranges grow
        @orange_count = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height}m tall," +
        " and produced #{@orange_count} oranges."
      else
        "This year your tree grew to #{@height}m tall," +
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