# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree

def initialize
  @height = 0
  @tree_age = 0
  @oranges_on_tree = 0
  @growth_per_year = 0.4
  @life_status = true
end

def height
  if @life_status == true
    puts "The tree is #{@height} metres tall"
  else
    puts "A dead tree is not very tall. :("
  end
end

def one_year_passes
  if @life_status == true
    @tree_age = @tree_age + 1
    @oranges_on_tree = 0
    @height = (@height + @growth_per_year).round(1)
    if @tree_age >=6
      @oranges_on_tree = (@oranges_on_tree + (@height * 15 - 25)).round(0)
      puts "This year your tree grew to #{@height}m tall, and produced #{@oranges_on_tree} oranges."
    else
    puts "The tree is now #{@tree_age} years old. This year your tree grew to #{@height}m tall but isn't old enough to bear fruit."
  end
  else
    puts "The tree is still dead..."
  end
  if @tree_age == 25
    @life_status = false
    puts 'Oh, no! The tree is too old, and has died. :('
  end
end

def count_the_oranges
  if @life_status == true
    if @oranges_on_tree > 0
      puts "There are #{@oranges_on_tree.to_i} oranges on the tree"
    else
      puts "There are no oranges on the tree."
    end
  else
    puts "A dead tree has no oranges. :("
  end
end

def pick_orange
  if @life_status == true
    if @oranges_on_tree > 0
      @oranges_on_tree = @oranges_on_tree - 1
      puts "Mmmm, tasty!"
    else puts "There are no oranges to pick!"
    end
  else
    puts "A dead tree has nothing to pick. :("
  end
end
end

clurr = OrangeTree.new

23.times do
  clurr.one_year_passes
end
