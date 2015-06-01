class OrangeTree

  def initialize
    @height  = 0
    @age     = 0
    @oranges = 0
  end

  def height
    @height
  end

  def one_year_passes
    @age = @age + 1
    @height = @height + 1
    @oranges = 0
    if @age > 9
      puts "Your tree has died"
      exit
    end
    if @age.between?(4, 7)
      @oranges = @oranges + 2
    end
    if @age.between?(8, 10)
      @oranges = @oranges + 6
    end
  end

  def count_the_oranges
    @oranges
  end

  def pick_an_orange
    if @oranges > 0
       @oranges = @oranges - 1
       puts "That was a delicious orange"
    else
      puts "No more oranges left to pick"
    end
  end
end

tree = OrangeTree.new

puts tree.height
puts tree.count_the_oranges
puts tree.pick_an_orange
2.times do
  tree.one_year_passes
end
puts tree.height
puts tree.count_the_oranges
5.times do
  tree.one_year_passes
end
puts tree.height
puts tree.count_the_oranges
puts tree.pick_an_orange
puts tree.count_the_oranges
