class OrangeTree

  def initialize
    @age = 0
    @orange_count = 0
    @height = 0
    @alive = true
  end
  # returns height of Tree each year Tree grows taller
  def height
    @alive ? @height.round(1) : "A dead tree is not very tall. :("
  end

  def one_year_passes
    # reset @orange_count
    if @alive
      @age += 1
      @height += 0.4.round(1)
      @orange_count = 0

      if @age > 4
        num_oranges
      end
    else
      return "A year later, the tree is still dead. :("
    end

    if @age >= 26
      @alive = false
      return "Oh, no! The tree is too old, and has died. :("
    end

    "This year your tree grew to #{@height.round(1)}m tall, and produced #{@orange_count} oranges."

  end

  def count_the_oranges
    # returns num oranges
    @alive ? @orange_count : "A dead tree has no oranges. :("
  end

  def pick_an_orange
    # reduce @orange_count by 1 and returns string telling how
    # delicious it was or that no oranges left
    if @alive
      if @orange_count <= 0
        "There aren't any oranges to pick!"
      else
        "NYOM NYOM NYOM, that was great."
        @orange_count -= 1
      end
    else
      "A dead tree has nothing to pick. :("
    end

  end

  private
  
  def num_oranges
    # only produces oranges at certain age tree produces more oranges as gets older
    # oranges not picked fall off
      if @age > 3
        return @orange_count = (@height * 15 - 25).round
      end
  end

  def age
    @age
  end

end

tree = OrangeTree.new


24.times do
  tree.one_year_passes
end

puts tree.count_the_oranges
puts tree.one_year_passes
puts tree.one_year_passes
puts tree.one_year_passes
