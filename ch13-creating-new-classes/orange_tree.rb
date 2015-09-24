class OrangeTree

  @height = 0
  @fruit = 0
  @alive = true


  def height
    @alive ? @height : 'A dead tree is not very tall. :('
  end


  def count_the_oranges
    @alive ? @fruit : 'A dead tree has no oranges. :('
  end


  def one_year_passes
    if @alive
      @height += 0.4
      @fruit = 0

      if @height > 12
        @alive = false
        'Oh, no! The tree is too old, and has died. :('
      elsif @height > 2
        @orange_count = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height}m tall, " +
        "and produced #{@fruit} oranges."
      else
        "This year your tree grew to #{@height}m tall, " +
        "but is still too young to bear fruit."
      end

    else
      "A year later, the tree is still dead. :("
    end
        
  end
  

  def pick_an_orange
    if @alive
      if @fruit > 0
        @fruit -= 1
        "You pick a juicy, delicious orange!"
      else
      "You search every branch, but find no oranges."
      end
    else
      "A dead tree has nothing to pick. :("
    end
  end

end