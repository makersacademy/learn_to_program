class OrangeTree
  def initialise
    @height = 0
    @orange_count = 0
    @alive = true
  end

  def height
    if @alive
      @height.round(1)
    else
      "Your tree is dead"
    end
  end

  def count_the_oranges
    if @alive
      @orange_count
    else
      "Your tree is dead"
    end
  end

  def pick_an_orange
    if @alive
      if @orange_count > 0
        @orange_count -= 1
        "The orange was so delicious!" 
      else
        "No more oranges to pick"
      end
    else
      "Your tree is dead."
    end
  end

  def one_year_passes
    if @alive
      @height += 0.5
      @orange_count = 0
      if @height > 10
        @alive = false
        puts "The tree dies"
      elsif @height > 2
        @orange_count = (@height * 2).to_i
        "The tree grew to #{height.round(1)} and produced #{@orange_count} oranges!"
      else
        "The tree grew to #{height.round(1)} and but is too young to produce oranges!"
      end
    else
      "Your tree is still dead."
    end
  end

end
