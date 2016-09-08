class OrangeTree
  def initialize
    @age = 0
    @height = 0
    @orange_count = 0
  end

  def count_the_oranges
    if @age > 25
      'A dead tree has no oranges. :('
    else
      @orange_count.round(0)
    end
  end

  def pick_an_orange
    if @age > 25
      'A dead tree has nothing to pick. :('
    elsif @age >= 6
      @orange_count = [@orange_count - 1, 0].max
    end
  end

  def height
    if @age > 25
      'A dead tree is not very tall. :('
    else
      @height.round(1)
    end
  end

  def one_year_passes
    @age = @age + 1
    @height = @height + 0.4
    @orange_count = (@height * 15 - 25).round(1)

    if @age > 26
      'A year later, the tree is still dead. :('
    elsif @age > 25
      'Oh, no! The tree is too old, and has died. :('
    elsif @age >= 6
      "This year your tree grew to #{self.height}m tall, and produced #{self.count_the_oranges} oranges."
    end
  end
end
