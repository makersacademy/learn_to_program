class OrangeTree
 def initialize
	@age = 0
	@height = 1
	@orange_count = 0
end

public
def measure_height
	@height
end

def one_year_passes
	@age = @age + 1
	if @age > 5
		@orange_count = 0
		if @age > 15
		@orange_count = 40
		elsif @age > 10
		@orange_count = 30
		else @orange_count = 20
		end
	end
  if @age > 50
		puts 'The tree has died'
		exit
	end
  @height = @height + 1.5
end

def count_the_oranges
	@orange_count
end

def pick_an_orange
	if @orange_count > 0
	@orange_count = @orange_count - 1
	return 'The orange was delicious'
	else return 'There are no oranges on the tree'
end
end
end

my_tree = OrangeTree.new
my_tree.one_year_passes
my_tree.one_year_passes
my_tree.one_year_passes
my_tree.one_year_passes
my_tree.one_year_passes
my_tree.one_year_passes
my_tree.one_year_passes
my_tree.one_year_passes
my_tree.one_year_passes
my_tree.one_year_passes
puts my_tree.count_the_oranges
puts my_tree.pick_an_orange
puts my_tree.count_the_oranges
my_tree.one_year_passes
my_tree.one_year_passes
my_tree.one_year_passes
my_tree.one_year_passes
my_tree.one_year_passes
puts my_tree.count_the_oranges
puts my_tree.measure_height