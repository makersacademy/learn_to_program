class OrangeTree
  def initialize
    @age = 0
    @oranges = 0
    @height = 0.0
    @alive = true
  end

  def one_year_passes
    if @alive == false
      'A year later, the tree is still dead. :('
    elsif @age == 25
      @alive = false
      'Oh, no! The tree is too old, and has died. :('
    else
      @age += 1
      @height += 0.4
      if @age == 10
        @oranges = 35
      elsif @age > 10
        @oranges += 6
      end
      "This year your tree grew to #{@height.round(1)}m tall, and produced #{@oranges} oranges."
    end
  end

  def count_the_oranges
    if @alive
      @oranges
    else
      'A dead tree has no oranges. :('
    end
  end

  def height
    if @alive == false
      'A dead tree is not very tall. :('
    else
      @height.round(1)
    end
  end

  def pick_an_orange
    if @alive
      if @orange_count > 0
        @orange_count = @orange_count - 1
        'You pick a juicy, delicious orange!'
      else
        'You search every branch, but find no oranges.'
      end
    else
      'A dead tree has nothing to pick. :('
    end
  end
end

