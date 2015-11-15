class OrangeTree

  def initialize
    @height = 0.0
    @age = 0
    @oranges = 0
    @alive = true
  end

  def height
    if @alive
      @height
    else
      "A dead tree is not very tall. :("
    end
  end
  def one_year_passes
    @age += 1
    if @age == 26
      @alive = false
      "Oh, no! The tree is too old, and has died. :("
    elsif @age > 26
      @alive = false
      "A year later, the tree is still dead. :("
    else
      @height = (0.4+ @height).round(1)
      @oranges = 119 if @age > 2
      @oranges = 125 if @age == 25
      "This year your tree grew to #{@height}m tall, and produced #{@oranges} oranges."
    end
  end
  def count_the_oranges
    if @alive
      @oranges
    else
      "A dead tree has no oranges. :("
    end
  end
  def pick_an_orange
    if @alive
      if @oranges >= 1
        @oranges -= 1
        return "Woa that was gooooood"
      else
        "no more oranges this year"
      end
    else
      @oranges == 0
      "A dead tree has nothing to pick. :("
    end
  end

end
#
# TRYING TO UNDERSTAND AGE....
# 24 > 119
# 25 > 125
