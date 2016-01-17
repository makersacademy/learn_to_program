class OrangeTree

  def initialize
    @year = 0
    @height = 0
    @orange_count = 0
    @alive = true
  end

  def height
    @alive ? @height : 'A dead tree is not very tall. :('
  end

  def count_the_oranges
    @alive ? @orange_count : 'A dead tree has no oranges. :('
  end

  def one_year_passes
    if @alive == false
      'A year later, the tree is still dead. :('
    else
    @year = @year + 1
    @height = (@height + 0.4).round(2)
    @orange_count = 0
    if @height > 10.0
      @alive = false
      @height = 0
      'Oh, no! The tree is too old, and has died. :('
    else
      summer
    end
  end
  end

  def summer
    if @year > 5
      @orange_count = (@height * 15 - 25).to_i
    else
      @orange_count = 0
      "No fruit yet"
    end
    "This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
  end

  def pick_an_orange
    if @orange_count > 0
      @orange_count = @orange_count - 1
      "You pick an orange. It was delicious"
      "There are still #{@orange_count} oranges left on the tree"
    else
      "A dead tree has nothing to pick. :("
    end
  end

end
