class OrangeTree
   def initialize
      @height = 0
      @oranges = 0
      @tree = true
    end

  def height
      @height
  end
  def one_year_passes
    @height = @height +=1
    @oranges = 0
    if @height > 10
      puts "tree has died"
      @tree = false
    elsif @height > 2
      @oranges = @height * rand(5)
      puts "tree is #{@height}m and has grown #{@oranges} oranges this year"
    else
      puts "tree is #{@height}m and has grown #{@oranges} oranges this year"
    end
  end
  def pick_an_orange
    if @oranges > 0
        @oranges = @oranges -= 1
        "orange picked"
    else
        "no oranges"
    end
  end
  def orange_count
    if @tree == true
      puts "tree has #{@oranges} oranges"
    else
      "tree is dead"
    end
  end

end

tree =OrangeTree.new
tree.height
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes

tree.pick_an_orange
tree.orange_count
tree.one_year_passes
tree.one_year_passes

tree.pick_an_orange
tree.orange_count
tree.one_year_passes
tree.one_year_passes

tree.pick_an_orange
tree.orange_count
tree.one_year_passes
tree.one_year_passes

tree.pick_an_orange
tree.orange_count