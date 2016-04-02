class OrangeTree
  def initialize
    @orange_count = 0
    @tree_height = 0
    @tree_age = 0
    @alive = true
  end

  def height
    #return the height of the tree
    if @alive == true
      return @tree_height.round(1)
    else
      return "A dead tree is not very tall. :("
    end
  end

  def one_year_passes
    if @alive == false
      return "A year later, the tree is still dead. :("
    end
    #age the tree by one year
    @tree_age += 1
    #grow taller
    @tree_height += 0.4
    #drop all current oranges
    @oranges = 0
    #if age too old, die
    if @tree_height > 10.1
      @alive = false
      "Oh, no! The tree is too old, and has died. :("
    #dont grow fruit for the first few years
    #as tree gets older produce more fruit
    elsif @tree_age > 2
      @orange_count = (@tree_height* 15 - 25).to_i
      "This year your tree grew to #{@tree_height.round(1)}m tall, and produced #{@orange_count} oranges."
    else
      "This year your tree grew to #{@tree_height.round(1)}m tall, but is still too young to bear fruit."
    end
  end

  def count_the_oranges
    #return the current number of oranges
    if @alive == true
      return @orange_count
    else
      return "A dead tree has no oranges. :("
    end
  end

  def pick_an_orange
    #return how delicious the orange was, or that there are none left
    if @alive == true
      if @orange_count > 0
        @orange_count -= 1
        return "The orange was delicious."
      else
        return "There are no oranges left."
      end
    else
      return "A dead tree has nothing to pick. :("
    end
  end
end
