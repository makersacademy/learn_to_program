class OrangeTree
  def initialize
    @height = 0
    @age = 0
    @fruits = 0
  end
  def height
    puts "The tree is now #{@height}cm tall!"
  end
  def count_the_oranges
    puts "There are #{@fruits} orange(s) left on the tree!"
  end
  def pick_an_orange
    if @fruits >= 1
      @fruits -= 1
      puts 'You pick an orange and munch it up. It was arguably the juiciest orange you have ever had!'
    else
      puts 'There are no more oranges left on the tree for this year!'
    end
  end
  def fruit_grows
    if @age >= 3
      @fruits = @age ** 2
    end
  end
  def one_year_passes
    @age += 1
    growth = rand(75..90)
    @height += growth
    fruit_grows
    if @age > rand(10..15)
      puts 'The tree is too old and died! :('
      exit
    end
    if @fruits > 0
      puts "The tree grew by #{growth} and now has #{@fruits} oranges!"
    else
      puts "The tree grew by #{growth}cm but it doesn't have any oranges yet!"
    end
  end
end

ot = OrangeTree.new
ot.one_year_passes
ot.pick_an_orange
ot.one_year_passes
ot.height
ot.one_year_passes
ot.one_year_passes
ot.count_the_oranges
ot.pick_an_orange
ot.count_the_oranges
ot.one_year_passes
ot.count_the_oranges
ot.height
10.times do ot.one_year_passes end
