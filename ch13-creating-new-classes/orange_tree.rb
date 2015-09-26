class OrangeTree
  def initialize
    @height = 0
    @orange_count = 0
    @alive = true
  end
  def height
    if @alive
      @height
    else
      "Sadly the tree is dead."
    end
  end
  def count_the_oranges
    if @alive
      @orange_count
    else
      "The tree is dead, there are no oranges."
    end
  end
  def one_year_passes
    if @alive
      @height = @height + 0.4
      @orange_count = 0

      if @height > 10 && rand(2) > 0
        @alive = false
        "The tree has died."
      elsif @height > 2
        @orange_count = (@height * 15 - 20).to_i
        p "This year your tree grew to #{@height}m tall."
        p "It also produced #{@orange_count} oranges."
      else
        "This year your tree grew to #{@height} but was still too young to bear oranges"
      end
    else
      "The tree is still dead."
    end
  end
  def pick_an_orange
    if @alive
      if @orange_count > 0
        @orange_count -= 1
        "You picked a juicy orange!"
      else
        "There are no oranges left."
      end
    else
      "The tree is dead."
    end
  end
end
