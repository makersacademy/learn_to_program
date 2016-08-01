# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree

  def initialize
    @height = 0
    @age = 0
    @oranges = 0

    puts "Your tree has begun its life!"
  end

  def height
    puts "Your tree is #{@height.round(1)} meters."
  end

  def age
    puts "Your tree is #{@age} years old."
  end

  def count_the_oranges
    puts "There are #{@oranges} oranges on your tree."
  end

  def pick_an_orange
    if @oranges > 0
      @oranges -= 1
      puts "Mmm, that was a good orange!"
    else
      puts "There are no oranges just now."
    end
  end

  def one_year_passes
    @oranges = 0
    @height += 0.4
    @age += 1

    if age > 5
      @oranges = @height * rand(15..20)
    end

    if @age > 25
      puts "Oh no, the tree died!"
      exit
    end
  end
end

tree = OrangeTree.new

while true
  puts
  puts "Questions: age, height, count the oranges, pick an orange, grow, exit"
  command = gets.chomp
  if command == "age"
    tree.age
  elsif command == "grow"
    tree.one_year_passes
  elsif command == "height"
    tree.height
  elsif command == "count the oranges"
    tree.count_the_oranges
  elsif command == "pick an orange"
    tree.pick_an_orange
  elsif command == "exit"
    exit
  else
    puts "Please type a valid command."
  end
end
