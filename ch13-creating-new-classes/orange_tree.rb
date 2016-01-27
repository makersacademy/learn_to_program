class OrangeTree

# I had to re-write a fair amount of my original code to make sure the
# strings being outputted were correct for the rspec test.

  def initialize
    @height = 0
    @age = 0
    @orange_count = 0
    @alive = true
  end

  def one_year_passes
    return "A year later, the tree is still dead. :(" if !@alive
    return the_tree_dies if @age == 25

    @age += 1
    @height += 0.4
    orange_calc
    "This year your tree grew to #{@height.round(1)}m tall, and produced #{@orange_count} oranges."
  end

  def count_the_oranges
    return "A dead tree has no oranges. :(" if !@alive
    @orange_count
  end

  def pick_an_orange
    return "A dead tree has nothing to pick. :(" if !@alive
    if @orange_count == 0
      puts "There are no oranges left to pick!"
    else
      @orange_count -= 1
      puts "There are now #{@orange_count} oranges left. That one was quite delicious."
    end
  end

  def height
    return "A dead tree is not very tall. :(" if !@alive
    @height.round(1)
  end

  private

  def orange_calc
    if @age < 4
      @orange_count = 0
    else
      @orange_count = (@height * 15 - 25).to_i
    end
  end

  def the_tree_dies
    @alive = false
    "Oh, no! The tree is too old, and has died. :("
  end

end
