class OrangeTree
  def initialize
    @height = 0
    @orange_count = 0                           # New born tree
    @alive = true
  end

  def height
    if @alive
      @height.round(1)                          # When asking for the height, rounds to nearest number for a nicer answer.
    else
      'A dead tree is not very tall. :('        # Incase anyone calls height when the tree is actually dead.
    end
  end

  def count_the_oranges
    if @alive
      @orange_count
    else
      'A dead tree has no oranges. :('
    end
  end

  def one_year_passes
    if @alive
      @height = @height + 0.4
      @orange_count = 0 # old oranges fall off
      if @height > 10 && rand(2) > 0                     # Is this a 1/2 chance the tree gets to grow another year?!
        # tree dies
        @alive = false
        'Oh, no! The tree is too old, and has died. :('
      elsif @height > 2
        # new oranges grow
        @orange_count = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height.round(1)}m tall," +
          " and produced #{@orange_count} oranges."
      else
        "This year your tree grew to #{@height.round(1)}m tall," +        # Nice touch to display the tree's new height before
          " but is still too young to bear fruit."                        # breaking the news that it can't grow oranges yet.
      end
    else
      'A year later, the tree is still dead. :('
    end
  end

  def pick_an_orange
    if @alive                                                     # First argurment - if its alive.
      if @orange_count > 0                                           # Sub argument
        @orange_count = @orange_count - 1
        'You pick a juicy, delicious orange!'
      else                                                           # Sub argument alternative
        'You search every branch, but find no oranges.'
      end
    else                                                          # Second argument alternative
      'A dead tree has nothing to pick. :('
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
