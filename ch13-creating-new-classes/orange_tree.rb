class OrangeTree

def initialize
  @height = 3
  @age = 1
  @orange_count = 0
end


def one_year_passes
  @age += 1
  @height += 1 if @height < 15
  @orange_count = 0
  grow_fruit
  puts "Tree is now #{@age} years old, #{@height} feet tall and has #{@orange_count} oranges."

  if @age > 6
    puts
    puts "The tree has died of old age"
    exit
  end
end

def pick_an_orange
  if @orange_count > 0
    @orange_count -= 1
    puts "What a deeeeelicious orange that was!"
  else
    puts "There's no fruit in the tree!"
  end
end

private
def grow_fruit
  if @age > 3
    @orange_count += @age * rand(10)
  end
end
end

tree = OrangeTree.new

tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.pick_an_orange
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
