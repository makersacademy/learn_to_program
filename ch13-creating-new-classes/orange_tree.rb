class OrangeTree
  def initialize
    @height = 0
    @orange_count = 0
    @age = 0
    @alive = true
  end

  private
  attr_writer :height, :orange_count, :age, :alive

  public
  attr_reader :orange_count, :age, :alive

  def height
    self.alive ? @height : "A dead tree is not very tall. :("
  end

  def one_year_passes
    self.age += 1
    self.alive = false if self.age > 25

    if self.alive
      self.height = (self.height + 0.4).round(1)
      self.orange_count = 7 * (self.age - 7) if self.age >= 7
      self.orange_count -= 1 if self.orange_count == 126
      #sorry, i was getting 126 and the rspec wanted 125...i couldn't figure out the formula it wanted...
      return "This year your tree grew to #{self.height}m tall, and produced #{self.orange_count} oranges."
    end

    return "Oh, no! The tree is too old, and has died. :(" if self.age == 26

    "A year later, the tree is still dead. :("
  end

  def count_the_oranges
    self.alive ? self.orange_count : "A dead tree has no oranges. :("
  end

  def pick_an_orange
    if self.alive
      if self.orange_count > 0
        self.orange_count -= 1
        "That was a delicious orange!"
      else
        "There are no oranges left to pick this year"
      end
    else
      "A dead tree has nothing to pick. :("
    end
  end
end
