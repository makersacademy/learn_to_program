class OrangeTree
   def initialize
      @height = 0
      @oranges = 0
      @tree = true
    end

  def height
    if @tree == true
      @height.round(1)
    else
       'A dead tree is not very tall. :('
    end
  end
  def one_year_passes
    if @tree
    @height = @height + 0.4
    @oranges = 0
    if @height > 10 && rand(2) > 0
      puts "tree has died"
      @tree == false
        'Oh, no! The tree is too old, and has died. :('
    elsif @height > 2
      @oranges = (@height * 15 - 25).to_i
      "This year your tree grew to #{@height.round(1)}m tall," +
          " and produced #{@oranges} oranges."

    else
     "This year your tree grew to #{@height.round(1)}m tall," +
          " but is still too young to bear fruit."
    end
  else
      'A year later, the tree is still dead. :('
    end
  end
   def pick_an_orange
    if @tree==true
      if @oranges > 0
        @oranges = @oranges - 1
        'You pick a juicy, delicious orange!'
      else
        'You search every branch, but find no oranges.'
      end
    else
      'A dead tree has nothing to pick. :('
    end
  end

  def count_the_oranges
    if @tree == true
      @oranges
     #puts "tree has #{@oranges} oranges"
    else
       'A dead tree has no oranges. :('
    end
  end

end

tree =OrangeTree.new
tree.height
p tree.one_year_passes
p tree.one_year_passes
p tree.one_year_passes
p tree.one_year_passes
p tree.one_year_passes
p tree.one_year_passes
p tree.one_year_passes
p tree.one_year_passes
p tree.one_year_passes
p tree.one_year_passes
p tree.one_year_passes
p tree.one_year_passes
p tree.one_year_passes
p tree.one_year_passes
p tree.one_year_passes
p tree.one_year_passes
p tree.one_year_passes
p tree.one_year_passes
p tree.one_year_passes
p tree.one_year_passes
p tree.one_year_passes
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