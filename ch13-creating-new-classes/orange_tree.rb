class OrangeTree
  def initialize
    @height = 0.0
    @alive = true
    @orange_count = 0
    @age = 0
  end

  def height
    if @alive
      @orange_count
    else
      puts "A dead tree has no oranges. D:"
    end

  def one_year_passes
    if @alive
      @height = (@height + 0.4).round(1)
      @age = @age + 1
      @orange_count = 0
      if @height > 10.2
        @alive = false
        "Oh, no! The tree is too old and has died. womp womp"
      elsif
        @orange_count = (@height * 15 - 25).to_i
        "This year your tree grew to #{height.round(1)}m tall," + " and produced #{@orange_count} oranges."
      else
        "This year your tree grew to #{@height.round(1)}m tall," + " but is still too young to bear fruit."
      end
    else
      "A year later, the tree is still dead. c):-("
    end
  end
end