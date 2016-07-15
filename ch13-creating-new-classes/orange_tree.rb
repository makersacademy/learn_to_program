class OrangeTree
  def initialize
    @age = 0
    @fruit = 0
    @height = 0
    @alive = true
    puts "You plant your orange tree seed."
  end
  def height
    if @alive
      @height.round(1)
    else
      'A dead tree is not very tall. :('
    end
  end

  def one_year_passes
    @fuit = 0
    @age += 1
    if @age <= 5
      @height += 0.4
      puts "This year your tree grew to #{@height.round(1)}m tall, but didn't produce any oranges."
    elsif @age < 26 && @age > 5
      @height += 0.4
      @fruit = (@height.round(1) * 15) - 25
      return "This year your tree grew to #{@height.round(1)}m tall, and produced #{@fruit.round} oranges."
    elsif @age == 26
      @alive = false
      'Oh, no! The tree is too old, and has died. :('
    else
      @alive = false
      'A year later, the tree is still dead. :('
    end
  end

  def count_the_oranges
    if @alive
      @fruit
    else
      'A dead tree has no oranges. :('
    end
  end

  def pick_an_orange
    if @alive
      if @fruit > 0
        @fruit -= 1
        puts 'Yum! That sure was a tasty orange.'
      else
        'There are no oranges to pick.'
      end
    else
      'A dead tree has nothing to pick. :('
    end
  end
end

#tree = OrangeTree.new

#23.times do
#  tree.one_year_passes
#end
#tree.one_year_passes
