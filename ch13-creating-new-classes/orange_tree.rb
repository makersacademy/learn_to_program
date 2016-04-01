=begin sigggggh can't pass the rspec with this cause the challenge doesnt specify too much
class OrangeTree
  # your code here
  def initialize
    @alive = true #should be alive at the start
    @height = 0 #starts at zero since it has grown yet in ft
    @orange_count = 0 
  end
  def height
    if @alive
      @height = 1
    else
      puts "Tree is dead"
    end
  end

  def one_year_passes #do this one last since hardest
    if @alive
      @height = @height + 1
      @orange_count = 0 #since all should fall off since a new season start
      if @height >= 50
        @alive = false
        puts "Tree is dead" 
      elsif @height > 3
        @orange_count = (300 + (@height * 4)).to_i
        puts "Tree is #{@height}ft tall and yielded #{@orange_count} oranges"
      else
        puts "Tree is #{@height}ft tall and too young to yield oranges"
      end  
    else
      puts "Tree is dead already"
    end   
  end

  def count_the_oranges
    if @alive
      @orange_count
    else
      puts "Tree is dead"
    end
  end

  def pick_an_orange
    if @alive
      if orange_count > 0
         @orange_count = @orange_count - 1
         "Nom Nom Delicious!" #almost forgot this sigh
      else
         puts "No oranges to pick" 
      end
    else
      puts "Tree is dead"
    end
  end
end
=end
# note we have added a rounding operation on the height to ensure
# the output is sensible in terms of decimal places

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
      if @height > 10.1 
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

ot = OrangeTree.new
23.times do
  ot.one_year_passes
end

# puts(ot.one_year_passes)
# puts(ot.count_the_oranges)
# puts(ot.height)
# puts(ot.one_year_passes)
# puts(ot.one_year_passes)
# puts(ot.one_year_passes)
# puts(ot.one_year_passes)
# puts(ot.one_year_passes)
# puts(ot.height)
# puts(ot.count_the_oranges)
# puts(ot.pick_an_orange)

