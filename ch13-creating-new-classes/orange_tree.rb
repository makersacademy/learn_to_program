# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree

  def initialize
  @age = 0
  @tall = 0
  @fruit = 0
  puts 'A new Orange Tree is planted.'
  end

  def height
  puts 'This year your tree grew to ' + @tall.round(1).to_s + 'm tall, and produced '+ @fruit.floor.to_s + ' oranges.'
  end

  def count_the_oranges
    puts 'This year your tree grew to ' + @tall.round(1).to_s + 'm tall, and produced '+ @fruit.floor.to_s + ' oranges.'
  
  #puts 'The tree has ' + @fruit.to_s + ' oranges.'
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
  @tall = @tall + 0.4
  @fruit = 0
  
  if dead?
  puts 'The Orange Tree dies'
  exit
  end 

  if @age > 5 
    if @age < 17
    #array =*(10..25)
    #orange_count = @age.to_i
    #@fruit = @age*array[orange_count]
    @fruit = @tall*(@age+9)
    else
    @fruit = 119#@age*25
    end
  else
  @fruit = 0
  end

  end

  private

  def dead?
  @age > 25
  end
end

tree = OrangeTree.new
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes

tree.height
