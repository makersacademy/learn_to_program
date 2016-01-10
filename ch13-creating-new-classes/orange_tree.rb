class OrangeTree
  def initialize
    @tree_age = 0
    @height = 0
    @orange_count = 0
    @dead = false
  end
  def height
    return "A dead tree is not very tall. :(" if @dead
    @height.round(1)
  end
  def one_year_passes
    return "A year later, the tree is still dead. :(" if @dead
    if @tree_age > 24
      @dead = true
      return "Oh, no! The tree is too old, and has died. :("
    end
    @tree_age += 1
    @height += 0.4
    if @tree_age > 5
      @orange_count = 0
      @orange_count = (@height*15 - 25).to_i
    end
    return "This year your tree grew to #{@height.round(1)}m tall, and produced #{@orange_count} oranges."
  end

  def count_the_oranges
    return "A dead tree has no oranges. :(" if @dead
    @orange_count
  end
  def pick_an_orange
    return "A dead tree has nothing to pick. :(" if @dead
    if @orange_count > 0
      @orange_count -= 1
      return "Orange was delicious!"
    else
      return "No more oranges, wait until next year."
    end
  end
end

