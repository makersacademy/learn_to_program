#My code fails to pass based on different growth parameters


# class OrangeTreeMine
#   def initialize
#     $height = 0
#     @orange_count = 0
#   end
#
#   def height
#     $height
#   end
#
#   def one_year_passes
#     $height += 1
#     puts "The tree is #{$height} m high!"
#     if $height >= 2
#       @orange_count = 10
#     end
#   end
#   def count_the_oranges
#     puts "There are #{@orange_count} oranges on the tree."
#   end
#   def pick_an_orange
#     @orange_count -= 1
#   end
# end
#
#
# tree = OrangeTreeMine.new
#
# puts
# puts "Welcome to Orange tree."
# while $height < 5
#   puts
#   puts "What would you like to do?"
#   puts "For advance a year type 'advance'"
#   puts "For count the oranges type 'count'"
#   puts "For pick the oranges type 'pick'"
#   puts
#   x = gets.chomp
#   if x == 'advance'
#     tree.one_year_passes
#   elsif x == 'count'
#     tree.count_the_oranges
#   elsif x == 'pick'
#     tree.pick_an_orange
#   else
#     puts "Try again"
#   end
# end
# puts "The tree died"





class OrangeTree
  def initialize
    @height = 0
    @orange_count = 0
    @alive = true
  end

  def height
    if @alive
      @height.round(1)
    else
      'A dead tree is not very tall. :('
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
      if @height > 10 && rand(2) > 0
        # tree dies
        @alive = false
        'Oh, no! The tree is too old, and has died. :('
      elsif @height > 2
        # new oranges grow
        @orange_count = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height.round(1)}m tall," +
          " and produced #{@orange_count} oranges."
      else
        "This year your tree grew to #{@height.round(1)}m tall," +
          " but is still too young to bear fruit."
      end
    else
      'A year later, the tree is still dead. :('
    end
  end

  def pick_an_orange
    if @alive
      if @orange_count > 0
        @orange_count = @orange_count - 1
        'You pick a juicy, delicious orange!'
      else
        'You search every branch, but find no oranges.'
      end
    else
      'A dead tree has nothing to pick. :('
    end
  end
end


