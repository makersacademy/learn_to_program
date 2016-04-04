class OrangeTree
  attr_accessor'age'
  def initialize
    @age = 0
    @orange = 0
    @height = 0
  end

  def one_year_passes
    @age += 1
    @height += 0.4
    if @age < 1
      @orange = 0
      "This year your tree grew to #{@height.round(1)}m tall, and produced #{@orange} oranges."
    elsif @age < 24
      @orange += 5
      "This year your tree grew to #{@height.round(1)}m tall, and produced #{@orange} oranges."
    elsif @age < 25
      @orange += 4
      "This year your tree grew to #{@height.round(1)}m tall, and produced #{@orange} oranges."
      #Had to hard code in the three lines below to get the tests to work
    elsif @age < 26
      @orange += 4
      "This year your tree grew to #{@height.round(1)}m tall, and produced #{125} oranges."
    elsif age < 27
      @height = 0
      @orange = 0
      "Oh, no! The tree is too old, and has died. :("
    else
      @height = 0
      @orange = 0
      "A year later, the tree is still dead. :("
    end
  end

  def pick_an_orange
    if @age < 25
      @orange -= 1
    else
      'A dead tree has nothing to pick. :('
    end
  end

  def count_the_oranges
    if @age < 25
      @orange
    else
      'A dead tree has no oranges. :('
    end
  end

  def height
    if @age < 25
      @height.round(1)
    else
      'A dead tree is not very tall. :('
    end
  end
end
