=begin THIS WORKS OK CHRIS PINE?
class OrangeTree

  def initialize
    @height, @orange_count, = 0, 0

    puts "A seed has been sown."
  end

  def height
    puts "This orange tree is #{@height} #{@height == 1 ? "foot" : "feet"} tall."

    one_year_passes
    produce_oranges
  end

  def count_oranges
    puts "#{@orange_count} #{@orange_count == 1 ? "orange" : "oranges"} on this tree!"
  end

  def pick_orange
    if @orange_count > 0
      @orange_count -=1
      puts "Nomnomnom."
    else
      puts "There's nothing for you to pick here. Patience is a virtue."
    end
  end

  def one_year_passes
    if @height < 8
     @height += 1
    else
    puts "Your tree has withered and died of old age. No more oranges for you."
    exit
    end
  end

  def produce_oranges
    if @height >= 3
      @orange_count += 2
    else
      @orange_count = 0
    end
  end
end

tree = OrangeTree.new
tree.count_oranges
tree.height
tree.count_oranges
tree.height
tree.height
tree.height
tree.height
tree.height
tree.count_oranges
tree.pick_orange
tree.count_oranges
tree.pick_orange
tree.pick_orange
tree.height
tree.height
tree.count_oranges
tree.height
=end

#the PINE solution. which is arguably more sophisticated.

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