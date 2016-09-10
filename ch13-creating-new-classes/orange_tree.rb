
class OrangeTree

  def initialize
    @age = 0
    @height = 0.0
    @orange_count = 0
    @dead = false
  end

  def height
    if @dead == true
       "A dead tree is not very tall. :("
    else
      @height
    end
  end

  def count_the_oranges
    if @dead == true
      "A dead tree has no oranges. :("
    else
      @orange_count
    end
  end

  def pick_an_orange
    if @dead == true
       "A dead tree has nothing to pick. :("
    elsif @orange_count >= 1
      @orange_count -= 1
    else
       "no oranges to pick this year"
    end
  end


  def one_year_passes
    @orange_count = 6
    if @dead == true
      return "A year later, the tree is still dead. :("
    elsif @age == 25
      @dead = true
      return "Oh, no! The tree is too old, and has died. :("
    end

    if @age > 5
      @orange_count += (@height * 15 - 25).to_i
    end

    @age += 1
    @height += 0.4
    @height = '%.1f' % @height
    @height = @height.to_f

     "This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
  end

end
