class OrangeTree

  def initialize name, age
    @name = name
    @age = age
    @height = (@age*1.2).round(2)
    @orange_count = ((@height-1.2)*1.2).round
    @alive = true
  end

  def one_year_passes
    @age = @age + 1
    @height = (@age*1.2).round(2)
    @orange_count = ((@height-1.2)*1.2).round
    @alive = false if @age > 10
  end

  def pick_an_orange
    if @alive
      if @orange_count > 0
        @orange_count -= 1
        puts "That was so good!"
      else
        puts "No more left :("
      end
    else
      puts "It's dead"
    end
  end

  def count_the_oranges
    if @alive
      puts "There are #{@orange_count} left."
    else
      puts "It's dead"
    end
  end

  def height
    puts "The orange tree is #{@height}m tall"
  end

end

tree = OrangeTree.new 'Hello', 8
tree.height
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.count_the_oranges
tree.pick_an_orange
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
tree.one_year_passes
tree.pick_an_orange
