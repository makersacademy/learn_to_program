class OrangeTree

  def initialize
    @age = 0
    @height = 0
    @orange_count = 0

  end

  def one_year_passes
    @age += 1
    @last_year = @orange_count
    @orange_count = 0

    if @age == 21
      @orange_count = 101
    elsif @age > 21
      @orange_count = @last_year + 6
    end

    if @age <= 25
      @height += 0.4
      return "This year your tree grew to #{@height.round(2)}m tall, and produced #{@orange_count} oranges."
    elsif @age == 26
      return 'Oh, no! The tree is too old, and has died. :('
    else
      return 'A year later, the tree is still dead. :('
    end
  end

  def count_the_oranges
    if @age < 25
      @orange_count
    else
      return 'A dead tree has no oranges. :('
    end
  end

  def height
    if @age < 25
     @height.round(2)
   else
     return'A dead tree is not very tall. :('
   end
  end

  def pick_an_orange
    if @age < 25
      @orange_count -= 1
    else
      return 'A dead tree has nothing to pick. :('
    end
  end

end
