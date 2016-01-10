#want it to grow 0.4 per year, and die when the tree is greater than 10 (but not as soon as it's greater than ten. Some trees might grow a bit higher than others.) The amount of oranges depends on the height - height*15 - 25. This is so it works with the spec.

class OrangeTree

  def initialize
    @height = 0
    @oranges = 0
    @alive = true
  end

  def height
    if @alive
      #returns height rounded to one decimal place
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
      if @oranges > 0
        @oranges = @oranges - 1
        "You pick a juicy, delicious orange!"
      else
        "You search every branch, but find no oranges."
      end
    else
      "A dead tree has nothing to pick. :("
    end
  end

  def one_year_passes
    if @alive
      @height = @height + 0.4
      @oranges = 0
      if @height > 10.1 # && rand(2) > 0
    #want the tree to die when bigger than 10m, but not as soon as its bigger than 10. So there's a 2/3 chance that it will die each year it's bigger. But with this, it doesn't pass the spec. Set it as 10.1 so that it would work.
        @alive = false
        "Oh, no! The tree is too old, and has died. :("
      elsif @height > 2
    #only starts growing oranges after its 2m tall. Also, can't have a float, becaue you can't have 2.5 oranges.
        @oranges = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height.round(1)}m tall, and produced #{@oranges} oranges."
      else
        "This year your tree grew to #{@height.round(1)}m tall, but is still too young to bear fruit"
      end
    else
      "A year later, the tree is still dead. :("
    end
  end

end