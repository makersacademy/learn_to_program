class OrangeTree

  def initialize
    @height = 0
    @orange_count = 0
    @alive = true
  end

  def height
    if @alive
      @height
    else
      "A dead tree is not very tall. :("
    end
  end

  def count_the_oranges
    if @alive
      @orange_count
    else
      "A dead tree has no oranges. :("
    end
  end

  def one_year_passes
    if @alive
      @height = (@height + 0.4).round(2)
      @orange_count = 0

      if @height > 10
        @alive = false
        "Oh, no! The tree is too old, and has died. :("
      elsif @height > 2
        @orange_count = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
      else
        "This year your tree grew to #{@height}m tall, but it's still too young to bear fruit."
      end

    else
      "A year later, the tree is still dead. :("
    end
  end


  def pick_an_orange
    if @alive
      if @orange_count > 0
        @orange_count -= 1
        'You picked a delicous orange!'
      else
        'You search every branch, but find no oranges.'
      end
    else
      "A dead tree has nothing to pick. :("
    end
  end
end



ot = OrangeTree.new
23.times do
  ot.one_year_passes
end

puts(ot.one_year_passes)
puts(ot.count_the_oranges)
puts(ot.height)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.height)
puts(ot.count_the_oranges)
puts(ot.pick_an_orange)



# one_year_passes method ages the tree by one year
# grows taller by 10cm for each year

# grows a number of years and dies e.g.10 years and dies

# first few years, it does not produce fruit
# after a certain number of years, it produces fruit

# method count_the_oranges
# returns the number of oranges on the tree

# method pick_an_orange
# which reduces the @orange_count by 1 and returns a strign tellling you how delicious the orange was or no more oranges to pick

# Any oranges that aren't picked one year fall off before the next year

