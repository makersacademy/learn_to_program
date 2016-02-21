class OrangeTree
  def initialize
    @height = 0
    @is_alive = true
    @fruit = 0

    puts 'A new Orange Tree is planted.'
  end

  def height
    if @is_alive
      @height.round(1)
    else
      "A dead tree is not very tall. :("
    end
  end

  def count_the_oranges
    if @is_alive
      @fruit
    else
      "A dead tree has no oranges. :("
    end
  end

  def pick_an_orange
    if @is_alive
      if @fruit > 0
        "You pick a juicy, delicious orange!"
        @fruit = @fruit - 1
      else
        "You search every branch, but find no oranges."
      end
    else
      "A dead tree has nothing to pick. :("
    end
  end

  def one_year_passes
    if @is_alive
      @height = @height + 0.4
      @fruit = 0

      if @height > 10.1
        @is_alive = false
        "Oh, no! The tree is too old, and has died. :("

      elsif @height > 2
        @fruit = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height.round(1)}m tall," +
        " and produced #{@fruit} oranges."

      else
        "Your tree is too young to have fruit."
      end
    else
      "A year later, the tree is still dead. :("
    end
  end
end
