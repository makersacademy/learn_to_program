class OrangeTree
  attr_accessor :height, :orange_count
  def initialize
    @height = 0
    @orange_count = 0
    @dead = false
  end
  
  def height
    @dead ? "A dead tree is not very tall. :(" : @height.round(1)
  end
  
  def one_year_passes
    if @dead
      "A year later, the tree is still dead. :("
    else
      @height += 0.4
      @orange_count = 0
      if @height > 10.1 
        @dead = true
        "Oh, no! The tree is too old, and has died. :("
      elsif @height > 2
        @orange_count = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height.round(1)}m tall, and produced #{@orange_count} oranges."
      else
        "This year your tree grew to #{@height.round(1)}m tall, but is still too young to bear fruit."
      end
    end
  end
  
  def count_the_oranges
   @dead ? "A dead tree has no oranges. :(" : @orange_count
  end
  
  def pick_an_orange
    if @dead
      "A dead tree has nothing to pick. :("
    elsif @orange_count > 0
      @orange_count -= 1
      "Wow! What a great orange that was"
    else
      "There are no oranges on the tree to pick"
    end
  end
end