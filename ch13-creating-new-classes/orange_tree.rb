class OrangeTree

  def initialize
    @alive = true
    @height = 0 # only seed planted.
    @oranges = 0 # No oranges on the tree yet.
  end

  def height
    if @alive == true
      return @height.round(1)
    else
      return "A dead tree is not very tall. :("
    end
  end

  def pick_an_orange
    if @alive == true
      if @oranges > 0
        @oranges -= 1
        return "You pick a juicy, delicious orange!"
      else
        return "You search every branch, but find no oranges."
      end

    else
      return "A dead tree has nothing to pick. :("
    end
  end

  def count_the_oranges
    if @alive == true
      return @oranges
    else
      return "A dead tree has no oranges. :("
    end
  end

 def one_year_passes
    if @alive == true
      @height = @height + 0.4
      @oranges = 0

      if @height > 10.1
        @alive = false
        'Oh, no! The tree is too old, and has died. :('
      elsif @height > 2
        @oranges = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height.round(1)}m tall," +
          " and produced #{@oranges} oranges."
      else
        "This year your tree grew to #{@height.round(1)}m tall," +
          " but is still too young to bear fruit."
      end
    else
      'A year later, the tree is still dead. :('
    end
  end

end