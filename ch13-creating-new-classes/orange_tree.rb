class OrangeTree

  def initialize
    @alive    = true
    @height = 0
    @oranges  = 0
  end

  def height
    if @alive
      @height.round(1)
    else
      "A dead tree is not very tall. :("
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
      if oranges > 0
        @oranges -= 1
        "mmmm- delish....."
      else
        "sorry boss- no oranges....."
      end
    else
      "A dead tree has nothing to pick. :("
    end
  end

  def one_year_passes
    if @alive
      @height += 0.4
      @oranges = 0
      if height > 10 && rand(2) > 0
        @alive = false
        'Oh, no! The tree is too old, and has died. :('
      elsif height > 2
        @oranges = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height.round(1)}m tall, and produced #{@oranges} oranges."
      else
        "Your tree is only #{@height} meters tall- fruit baring trees have to be at least two..."
      end
    else
      "A year later, the tree is still dead. :("
    end
  end



end
