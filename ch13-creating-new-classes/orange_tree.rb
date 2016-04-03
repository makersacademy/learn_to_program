class OrangeTree

  def initialize
    @height = 0
    @age = 0
    @oranges = 0
    @previous_year_oranges = 0
    return "Your tree has begun to grow!"
  end

  def height
      if @age >= 25
        return "A dead tree is not very tall. :("
      else
      @height.round(1)
    end
  end

  def one_year_passes
      if @age > 25
        return "A year later, the tree is still dead. :("
      elsif @age == 25
        @age += 1
        return "Oh, no! The tree is too old, and has died. :("
      else
      @age += 1
      @height += 0.4
      @previous_year_oranges = @oranges
      @oranges = 0
      if @age == 5
        @oranges = 5
      elsif @age > 5
        @oranges = @previous_year_oranges + 6
      end
      return "This year your tree grew to #{@height.round(1)}m tall, and produced #{@oranges} oranges."
    end
  end

  def count_the_oranges
    if @age >= 25
      return "A dead tree has no oranges. :("
    else
    @oranges
  end
  end

  def pick_an_orange
    if @age >= 25
      return "A dead tree has nothing to pick. :("
    else
      @oranges -= 1
      if @oranges >= 1
        return "My, what a delicious orange."
      else
        return "Sorry, there are no more oranges to pick this year!"
      end
    end
  end

end

ot = OrangeTree.new
