class OrangeTree
  def initialize
    @height = 0
    @oranges = 0
    @alive= true
  end

  def height
    if @alive
      return @height.round(1)
    else
      "A dead tree is not very tall. :("
    end
  end

  def one_year_passes
    if @alive
      @height += 0.4
      @oranges = 0
      if @height > 10 && rand(2) > 0
        @alive = false
        return "Oh, no! The tree is too old, and has died. :("
      elsif @height > 2
        @oranges = (@height * 15 - 25).to_i
        return "This year your tree grew to #{height.round(1)}m tall, and produced #{@oranges} oranges."
      else
        return "This year your tree grew to #{height.round(1)}m tall, but is still to young to bear fruit."
      end
    else
      "A year later, the tree is still dead. :("
    end
  end

  def count_the_oranges
    if @alive
      return @oranges
    else
      "A dead tree has no oranges. :("
    end
  end

  def pick_an_orange
    if @alive
      while @oranges >= 1
        @oranges -= 1
        return "Such delicious oranges! :D"
      end
      return "No more oranges left :("
    else
      "A dead tree has nothing to pick. :("
    end
  end
end
