class OrangeTree

  def initialize
    @height = 0.0
    @age = 0
    @orange_count = 0
    @alive = true
  end

  def height
    @alive == true ? @height : 'A dead tree is not very tall. :('
  end

  def one_year_passes
    return 'A year later, the tree is still dead. :(' if @alive == false
    @age += 1
    @height = (@height + 0.4).round(1)
    @orange_count = @age * 6 - 25
    if @age > 25
      @alive = false
      "Oh, no! The tree is too old, and has died. :("
    else
      "This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
    end
  end

  def count_the_oranges
    @alive == true ? @orange_count : 'A dead tree has no oranges. :('
  end

  def pick_an_orange
    @alive == true ? @orange_count -= 1 : 'A dead tree has nothing to pick. :('
  end


end
