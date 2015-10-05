class OrangeTree
  def initialize
    @alive = true
    @age = 0
    @height = 0
    @orange_count = 0
  end

  def one_year_passes
    return 'A year later, the tree is still dead. :(' if @alive == false
    if @age >= 25
      @alive = false
      return 'Oh, no! The tree is too old, and has died. :('
    end
    @age += 1
    @height += 0.4
    @orange_count = (@height * 15 - 25).to_i
    "This year your tree grew to #{self.height}m tall, and produced #{@orange_count} oranges."
  end

  def count_the_oranges
    return "A dead tree has no oranges. :(" if @alive == false
    @orange_count
  end

  def pick_an_orange
    return "A dead tree has nothing to pick. :(" if @alive == false
    @orange_count -= 1
    'The orange was delicious.'
  end

  def height
    return 'A dead tree is not very tall. :(' if @alive == false
    @height.round(1)
  end
end