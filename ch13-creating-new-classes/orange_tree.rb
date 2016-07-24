class OrangeTree

  def initialize
    @age = 0
    @growth_rate = 0.4
    @maturity = 5
    @death = 26
    @height = 0
    @orange_count = 0
  end

  def height
    if @age < @death
      return @height.round(2)
    else
      return "A dead tree is not very tall. :("
    end
  end

  def one_year_passes  # when you call it, the tree ages by one year
    @age += 1
    @height += @growth_rate
    if @age < 5
      return "This year your tree grew to #{@height.round(2)}, but your tree isn't #{@maturity.to_i} years old yet, so there aren't any fruit! Your tree will have fruit in #{@maturity - @age} years."
    elsif @age == @death
      return "Oh, no! The tree is too old, and has died. :("
    elsif @age > @death
      return "A year later, the tree is still dead. :("
    else
      @orange_count = @height * 15 - 25
      return "This year your tree grew to #{@height.round(2)}m tall, and produced #{@orange_count.to_i} oranges."
    end
  end

  def count_the_oranges
    if @age < @death
      return @orange_count.to_i
    else
      return "A dead tree has no oranges. :("
    end
  end

  def pick_an_orange
    # reduces @orange_count by 1
    if (@age < @death) & (@orange_count > 1)
      @orange_count -= 1
      return "Mmmmhhh, that was delicious. You have #{@orange_count.to_i} oranges left." # returns string telling you how the orange was
    elsif (@age < @death) & (@orange_count < 1) # else tells you that there are no more oranges to pick this year
      return "Your tree is not yet #{@maturity}, so there aren't any fruit! Come back soon."
    else
      return "A dead tree has nothing to pick. :("
    end
  end

end
