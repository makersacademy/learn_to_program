class OrangeTree
  def initialize
    @age = 0
    @orange_count = 0
    @tree_height = 0
  end

  def height
    @tree_height
  end

  def one_year_passes
    @age +=1
    @tree_height +=1
    if @age > 6
      puts 'Tree dies'
      exit
    else
    produce_fruit
    end
  end

  def count_the_oranges
    @orange_count
  end

  def pick_an_orange
    if @orange_count > 0
      @orange_count -= 1
      puts 'That orange was truely delicious'
    else
      puts 'No more oranges to pick this year'
    end
  end

  private

  def produce_fruit
    if @age < 3
      @orange_count = 0
    else
      @orange_count = 2*@age
    end
  end

end

# myTree = OrangeTree.new
# puts " My tree height #{myTree.height}"
# puts "Number of oranges is #{myTree.count_the_oranges}"
# puts "One year passes"
# puts "Pick an orange"
# myTree.pick_an_orange
# myTree.one_year_passes
# puts

# puts " My tree height #{myTree.height}"
# puts "Number of oranges is #{myTree.count_the_oranges}"
# puts "One year passes"
# puts "Pick an orange"
# myTree.pick_an_orange
# myTree.one_year_passes
# puts

# puts " My tree height #{myTree.height}"
# puts "Number of oranges is #{myTree.count_the_oranges}"
# puts "One year passes"
# puts "Pick an orange"
# myTree.pick_an_orange
# puts "Pick an orange"
# myTree.pick_an_orange
# puts "Pick an orange"
# myTree.pick_an_orange
# puts "Pick an orange"
# myTree.pick_an_orange
# puts "Pick an orange"
# myTree.pick_an_orange
# puts "Pick an orange"
# myTree.pick_an_orange
# myTree.one_year_passes
# puts

# puts " My tree height #{myTree.height}"
# puts "Number of oranges is #{myTree.count_the_oranges}"
# puts "One year passes"
# puts "Pick an orange"
# myTree.pick_an_orange
# puts "Pick an orange"
# myTree.pick_an_orange
# puts "Pick an orange"
# myTree.pick_an_orange
# puts "Pick an orange"
# myTree.pick_an_orange
# puts "Pick an orange"
# myTree.pick_an_orange
# puts "Pick an orange"
# myTree.pick_an_orange
# puts "Pick an orange"
# myTree.pick_an_orange
# puts "Pick an orange"
# myTree.pick_an_orange
# puts "Pick an orange"
# myTree.pick_an_orange
# myTree.one_year_passes
# puts

# puts " My tree height #{myTree.height}"
# puts "Number of oranges is #{myTree.count_the_oranges}"
# puts "One year passes"
# puts "Pick an orange"
# myTree.pick_an_orange
# myTree.one_year_passes
# puts

# puts " My tree height #{myTree.height}"
# puts "Number of oranges is #{myTree.count_the_oranges}"
# puts "One year passes"
# puts "Pick an orange"
# myTree.pick_an_orange
# puts "Pick an orange"
# myTree.pick_an_orange
# myTree.one_year_passes
# puts

# puts " My tree height #{myTree.height}"
# puts "Number of oranges is #{myTree.count_the_oranges}"
# puts "One year passes"
# myTree.one_year_passes
# puts




