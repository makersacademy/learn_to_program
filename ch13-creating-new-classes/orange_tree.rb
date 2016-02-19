class OrangeTree
  # your code here
  def initialize
    @height = 0
    @orange_count = 0
    @alive = true
  end

  def one_year_passes
    while @alive
      if @height > 10.0
        @alive = false
        return "Oh, no! The tree is too old, and has died. :("

      elsif @height.round(2) <= 10.0
        @height += 0.4
        if @height > 2.0
          @orange_count += 6.27
        end

        return "This year your tree grew to #{@height.round(2)}m tall, and produced #{@orange_count.floor} oranges."
      end
    end

    return "A year later, the tree is still dead. :("

  end

  def height
    while @alive
      return @height.round(2)
    end
    return "A dead tree is not very tall. :("
  end

  def count_the_oranges
    while @alive
      return @orange_count.floor
    end
    return "A dead tree has no oranges. :("
  end

  def pick_an_orange
    while @alive
      @orange_count -= 1
      return "You picked an orange and it was delicious."
    end
    return "A dead tree has nothing to pick. :("
  end

end