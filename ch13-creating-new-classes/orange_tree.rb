class OrangeTree
  def initialize
    @height = 1
    @age = 0
    @orange_count = 0
    @alive = true

    puts "Your tree is born, it is #{@height} foot tall!"
  end

  def one_year_passes
    @orange_count = 0

      if @age > 2
        @orange_count = @age**2
      end

      if @age > 15
        @alive = false
        puts "Your tree has died, sorry"
        exit
      end

    @age = @age + 1
    @height = @height + (@age*2)
    puts "Your tree is now #{@age} years old, it is #{@height} foot tall, and has #{@orange_count} oranges growing on it's branches!"
  end

  def count_the_oranges
    puts "There are #{@orange_count} oranges in the tree"
  end

  def pick_an_orange
    @orange_count = @orange_count - 1
    puts "You picked an orange, there are now #{@orange_count} oranges left in the tree"
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
tree.one_year_passes
