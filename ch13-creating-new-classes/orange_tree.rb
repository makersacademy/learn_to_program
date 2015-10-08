class OrangeTree
  
  def initialize 
    @height = 0
    @age = 0
    @orange_count = 0
    @alive = true
  end

  def height
    if @alive
      @height.round(1)
    else
      'A dead tree is not very tall. :('
    end
  end

  def age
    @age
  end

  def alive
    @alive
  end

  def one_year_passes
    @age < 25 ? (@alive = true) : (@alive = false)
    if @alive
      @age = @age + 1
      @height = @height + 0.4
      if @age == 5
        @orange_count = 5
      elsif @age > 5
        @orange_count = @orange_count = @orange_count + 6
      else
        @orange_count = 0
      end 
      "This year your tree grew to #{height}m tall, and produced #{count_the_oranges} oranges."
    else 
      @age = @age + 1
      @orange_count = 0
      @age == 26 ? 'Oh, no! The tree is too old, and has died. :(' : 'A year later, the tree is still dead. :('   
    end
  end

  def count_the_oranges
    if @alive
      @orange_count
    else
      'A dead tree has no oranges. :('
    end
  end

  def pick_an_orange
    if @alive
      if @orange_count > 0
        @orange_count = @orange_count - 1
        'That was a delicious orange.'
      else 
        'There are no oranges to pick!'
      end
    else
      'A dead tree has nothing to pick. :('
    end
  end

end