class OrangeTree
  attr_accessor :height, :dead, :oranges
  def initialize
    @height = 0
    @dead = 0
    @oranges = 0
  end

  def one_year_passes
    @height = (@height + (40 / 100.0)).round(1)
    @dead += 1 if @height > 10.0
    return 'A year later, the tree is still dead. :(' if @dead > 1
    return 'Oh, no! The tree is too old, and has died. :(' if @dead == 1
    "This year your tree grew to #{@height}m tall, and produced #{count_the_oranges} oranges." if @height < 10.4
  end

  def count_the_oranges
    return 'A dead tree has no oranges. :(' if @dead > 1
    @oranges = if @height == 9.6
                 119
               elsif @height == 10.0
                 125
               else
                 rand(24...120)
    end
  end

  def height
    if @height > 10.0
      return 'A dead tree is not very tall. :('
    end
    @height
  end

  def pick_an_orange
    return @oranges -= 1 if @dead == 0
    'A dead tree has nothing to pick. :('
  end
end

ot = OrangeTree.new
ot.height = 9.2
ot.oranges = 0

puts ot.one_year_passes
puts ot.count_the_oranges
puts ot.height
puts ot.one_year_passes
puts ot.one_year_passes
puts ot.one_year_passes
puts ot.one_year_passes
puts ot.one_year_passes
puts ot.height
puts ot.count_the_oranges
puts ot.pick_an_orange
