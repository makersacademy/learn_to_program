ANNUAL_GROWTH = 0.4
MAX_HEIGHT = 10.0
MIN_HEIGHT = 2.0

class OrangeTree

  def initialize
    @orange_count = 0
    @height = 0
    @alive = true
  end

  def height
    if @alive
      @height
    else
      'A dead tree is not very tall. :('
    end
  end

  def one_year_passes
    if @alive
      @height = (@height + ANNUAL_GROWTH).round(1)
      @orange_count = 0

      if @height > MAX_HEIGHT
        @alive = false
        'Oh, no! The tree is too old, and has died. :('
      elsif @height > MIN_HEIGHT
        @orange_count = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
      else
        "This year your tree grew to #{@height}m tall, but is still too young to bear fruit."
      end
    else
      'A year later, the tree is still dead. :('
    end
  end

  def pick_an_orange
    if @alive
      if @orange_count > 0
        @orange_count -= 1
      else
        'There are no oranges to pick :('
      end
    else
      'A dead tree has nothing to pick. :('
    end
  end

  def count_the_oranges
    if @alive
      @orange_count
    else
      'A dead tree has no oranges. :('
    end
  end
end
