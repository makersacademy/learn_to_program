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

=begin i prefer mine, but it doesn't pass.

class OrangeTree
  def initialize
	@height = 1
	@orange_count = 0
	@age = 0
  end
  def height
    puts "The Orange Tree is #{@height}m tall."
  end
  def one_year_passes
    @orange_count = 0
    if @age > 10
      puts "The tree is old and dies"
      exit
    elsif @age > 2
      @orange_count += (rand(0)*@age).round(0)
    else
    end
    @height += rand(1..20)/10.0
    @age += 1; puts "Tree is #{@age} years old"
  end
  def count_the_oranges
    puts "The Orange Tree has #{@orange_count} oranges this year."
  end
  def pick_an_orange
    if @orange_count > 0
      puts "You pick an orange. It's delicious!"
      @orange_count -= 1
    else
      puts "Sorry, there are no more oranges this year!"
    end
  end
end

ot = OrangeTree.new
ot.height
ot.count_the_oranges
ot.pick_an_orange
ot.one_year_passes
=end
