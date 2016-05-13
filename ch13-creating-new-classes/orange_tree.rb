class OrangeTree

  def initialize
    @height = 0
    @fruiting_age = 5
    @age = 0
    @death = 26
    @dead = false
    @count_the_oranges = 0
  end

  def one_year_passes
    @age += 1
    @height += 0.4 unless @dead
    @count_the_oranges = (@height * 15 - 25) if @age > @fruiting_age
    if @age >= @death
      @dead = true
      return "Oh, no! The tree is too old, and has died. :(" if @age == @death
      return "A year later, the tree is still dead. :(" if @age >= @death
    else
      return "This year your tree grew to #{self.height}m tall, and produced #{self.count_the_oranges} oranges." 
    end
  end

  def height
    if @dead 
      return "A dead tree is not very tall. :("
    else
      @height.round(1)
    end
  end

  def count_the_oranges
    if @dead
      return 'A dead tree has no oranges. :('
    else
      @count_the_oranges.to_i
    end
  end

  def pick_an_orange
    if @dead
      return 'A dead tree has nothing to pick. :('
    else
      @count_the_oranges -= 1
      return 'So tasty...'
    end
  end
end
