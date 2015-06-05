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
      'Dead = no height to report'
    end
  end

  def one_year_passes
    if @alive
      @height += 10
      @orange_count = 0 # assumes that old oranges from prev yr have fallen off

      if @height > 100 && rand(2) > 0
        # tree dies
        @alive = false
        'tree has died'
      elsif @height > 20
        # new oranges grow
        @orange_count = (@height * 30) # ??
        "This year your tree grew to #{@height}cm tall and produced #{@oranges}"
      else
        "Your tree grew to #{@height}cm tall, but isn't old enough to bear fruit"
      end
    else
      'A yr later and your tree is still dead'
    end

  end

  def count_the_oranges
    if @alive
      @orange_count
    else
      'Dead = no oranges to count'
    end
  end

  def pick_an_orange
    if @alive
      if @orange_count >= 1
        @orange_count -= 1
      else
        'cann\'t find any oranges to pick'
      end
    else
     'Nothing to pick as dead'
    end

  end



end

my_tree = OrangeTree.new
10.times do
  my_tree.one_year_passes
end
puts(my_tree.one_year_passes)
puts(my_tree.count_the_oranges)
puts(my_tree.height)

puts(my_tree.one_year_passes)
puts(my_tree.one_year_passes)
puts(my_tree.one_year_passes)
puts(my_tree.one_year_passes)

puts(my_tree.height)
puts(my_tree.count_the_oranges)
puts(my_tree.pick_an_orange)
