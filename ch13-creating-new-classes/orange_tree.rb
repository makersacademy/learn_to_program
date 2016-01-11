class OrangeTree
  def initialize
    @orange_count = 0
    @height = 0
    @age = 0
    @alive = true
  end

  def height
    if @alive
      @height.round(1)
    else
      'A dead tree is not very tall. :('
    end
  end

  def one_year_passes
    @age += 1
    if @alive
      @height += 0.4
    end
    case @age
    when 1..4
# to little for growing oranges yet
    when 5..25
# I'm productive now, increasing by the year
      @orange_count = 5 + 6 * (@age-5)
    when 26
# above 26 no more oranges I'm a dead by now
      @alive = false
      return 'Oh, no! The tree is too old, and has died. :('
    when 27..100
      return 'A year later, the tree is still dead. :('
    end
    "This year your tree grew to #{@height.round(1)}m tall, and produced #{@orange_count} oranges."
  end

  def count_the_oranges
    if @alive
      @orange_count
    else
      'A dead tree has no oranges. :('
    end
  end

  def pick_an_orange
    if @alive
      if @orange_count > 0
        @orange_count -= 1
        "There you are, an orange for you!"
      else
        "There are no oranges to pick at the moment"
      end
    else
      'A dead tree has nothing to pick. :('
    end
  end
end
