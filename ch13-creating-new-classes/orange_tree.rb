class OrangeTree
  # your code here
  def initialize
    @height = 0
    @age = 0
    @orange_count = 0
    @alive = true
  end

  def height
    @alive? @height : "A dead tree is not very tall. :("
  end

  def count_the_oranges
    @alive ? @orange_count.to_i : 'A dead tree has no oranges. :('
  end

  def one_year_passes
    @height += 0.4
    if !@alive
      "A year later, the tree is still dead. :("
    elsif @height > 10
      @alive = false
      "Oh, no! The tree is too old, and has died. :("
    else
      @orange_count = 0
      @age += 1
      @height = @height.round(1)
      if @age >= 5
        @orange_count += (@height * 15 - 25)
        @orange_count = @orange_count.to_i
      end
      "This year your tree grew to #{@height.round(1)}m tall, and produced #{@orange_count} oranges."
    end
  end

  def pick_an_orange
  return "A dead tree has nothing to pick. :(" unless @alive
    if @orange_count > 0
      @orange_count -=1
      "Ummmm lovely orange"
    else
      "No more oranges idiot"
    end
  end

end
