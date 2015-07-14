class OrangeTree

  def initialize
    @orange_count = 0
    @height = 0
    @alive = true

    "You plant your tree."
  end

  def height
    if @alive
      @height
    else
      "A dead tree is not very tall. :("
    end
  end

  def one_year_passes
    if @alive
      if @height < 10
        @height = (@height + 0.4).round(1)
        fruit
        "This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
      else
        death
      end
    else
      "A year later, the tree is still dead. :("
    end
  end

  def count_the_oranges
    if @alive
      @orange_count
    else
      "A dead tree has no oranges. :("
    end
  end

  def pick_an_orange
    if @alive
      if @orange_count > 0
        "That is one delicious orange!"
        @orange_count = @orange_count - 1
      else
        "There are no oranges to pick."
      end
    else
      "A dead tree has nothing to pick. :("
    end
  end

  def death
    @alive = false
    "Oh, no! The tree is too old, and has died. :("
  end

  def fruit
    if @height > 1
      @orange_count = (15 * @height - 25).to_i
    end
  end
end




