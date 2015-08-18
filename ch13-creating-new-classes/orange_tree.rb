class OrangeTree
  def initialize
    @height = 1
    @age = 0
    @orange_count = 0

    puts "Your tree is born, it is #{@height} foot tall!"
  end

  def one_year_passes
    @orange_count = 0
    @age = @age + 1
    @height = @height + (@age*2)

    puts "Your tree is now #{@age} years old, it is #{@height} foot tall, and has #{@orange_count} oranges growing on it's branches!"
  end

  def count_the_oranges
    puts "There are #{@orange_count} oranges in the tree"
  end

  def pick_an_orange
    @orange_count = @orange_count - 1
    puts "There are #{@orange_count} oranges left in the tree"
  end


  private

  def fruit
    if @age > 3
      @orange_count = @age**2
    end
  end

  def death
    if  @age > 15
    puts "Your tree has died, sorry"
    exit
    end
  end

end


tree = OrangeTree.new

tree.one_year_passes
tree.one_year_passes
tree.count_the_oranges
tree.one_year_passes
tree.one_year_passes
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.count_the_oranges
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.pick_an_orange
tree.pick_an_orange
tree.count_the_oranges
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
