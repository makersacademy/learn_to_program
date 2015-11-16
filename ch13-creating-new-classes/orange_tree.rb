class OrangeTree

def initialize
@age = 0
@tall = 0
@fruit = 0
puts 'A new Orange Tree is planted.'
end

def height
puts 'The tree is ' + @tall.to_s + ' feet tall.'
end

def count_the_oranges
puts 'The tree has ' + @fruit.to_s + ' oranges.'
end

def pick_an_orange
if @fruit < 1
puts 'Sorry, there are no oranges to pick this year.'
else
puts 'You pick an orange from the tree. It\'s very delicious.'
@fruit = @fruit - 1
end
end

def one_year_passes
puts 'One year passes'
@age = @age + 1
@tall = @tall + 1
@fruit = 0

if dead?
puts 'The Orange Tree dies'
exit
end 

if @age > 2
@fruit = @age*10
else
@fruit = 0
end

end

private

def dead?
@age > 5
end

end

puts ''
tree = OrangeTree.new
tree.height
tree.count_the_oranges
tree.pick_an_orange
puts ''
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
puts ''
tree.one_year_passes
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.count_the_oranges
puts ''
tree.one_year_passes
tree.height
tree.count_the_oranges
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.count_the_oranges
tree.pick_an_orange
tree.count_the_oranges
puts ''
tree.one_year_passes 
tree.height
tree.count_the_oranges 
puts ''
tree.one_year_passes 