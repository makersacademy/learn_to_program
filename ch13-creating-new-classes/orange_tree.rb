# class OrangeTree
#    def initialize
#       @height = 0
#       @oranges = 0
#       @tree = true
#     end

#   def height
#     if @tree == true
#       @height.round(1)
#     else
#        'A dead tree is not very tall. :('
#     end
#   end
#   def one_year_passes
#     if @tree
#     @height = @height + 0.4
#     @oranges = 0
#     if @height > 10 && rand(2) > 0
#       puts "tree has died"
#       @tree == false
#         'Oh, no! The tree is too old, and has died. :('
#     elsif @height > 2
#       @oranges = (@height * 15 - 25).to_i
#       "This year your tree grew to #{@height.round(1)}m tall," +
#           " and produced #{@oranges} oranges."

#     else
#      "This year your tree grew to #{@height.round(1)}m tall," +
#           " but is still too young to bear fruit."
#     end
#   else
#       'A year later, the tree is still dead. :('
#     end
#   end
#    def pick_an_orange
#     if @tree==true
#       if @oranges > 0
#         @oranges = @oranges - 1
#         'You pick a juicy, delicious orange!'
#       else
#         'You search every branch, but find no oranges.'
#       end
#     else
#       'A dead tree has nothing to pick. :('
#     end
#   end

#   def count_the_oranges
#     if @tree == true
#       @oranges
#      #puts "tree has #{@oranges} oranges"
#     else
#        'A dead tree has no oranges. :('
#     end
#   end

# end
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
      if @height > 10.4
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
tree =OrangeTree.new
tree.height
 23.times { tree.one_year_passes}
p tree.one_year_passes
p tree.count_the_oranges
p tree.height
p tree.one_year_passes
p tree.one_year_passes
# p tree.pick_an_orange
# p tree.count_the_oranges
# tree.one_year_passes
# tree.one_year_passes

# tree.pick_an_orange
# tree.count_the_oranges
# tree.one_year_passes
# tree.one_year_passes

# tree.pick_an_orange
# tree.count_the_oranges
# tree.one_year_passes
# tree.one_year_passes

# tree.pick_an_orange
# tree.count_the_oranges