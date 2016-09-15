=begin
Make an OrangeTree class that has a height method that returns
its height and a one_year_passes method that, when called, ages the tree one
year. Each year the tree grows taller (however much you think an orange
tree should grow in a year), and after some number of years (again, your
call) the tree should die. For the first few years, it should not produce
fruit, but after a while it should, and I guess that older trees produce
more each year than younger trees…whatever you think makes the most
sense. And, of course, you should be able to count_the_oranges (which returns
the number of oranges on the tree) and pick_an_orange (which reduces the
@orange_count by 1 and returns a string telling you how delicious the orange
was, or else it just tells you that there are no more oranges to pick this
year). Make sure any oranges you don’t pick one year fall off before the
next year.
=end

# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  def initialize
      @h = 0
      @age = 0
      @orange_count = 0
  end
  
  def height
      return @h
  end
  
  def one_year_passes
      @age +=1
      @orange_count = 0 #just to make sure all oranges fell off
      if @age >= 25
          puts death
      else
          grow
          if @age > 5
              make_fruit
          end
          puts 'This year your tree grew to #{@h.round(1)}m tall, and produced #{@orange_count.round} oranges.'
      end
  end
  
  def count_the_oranges
      if @age >= 25
        puts 'A dead tree has no oranges. :('
      else
        puts @orange_count.round
      end
  end
  
  def height
      if @age >= 25
          puts 'A dead tree is not very tall. :('
      else
        puts @h.round(1)
      end
  end
  
  def pick_an_orange
      return 'A dead tree has nothing to pick. :(' if @age >= 25
      if @orange_count > 0
        @orange_count -= 1
        puts 'Mmmmmmmmm. Delicious.'
      else
        puts 'No oranges. Sadness. :('
      end
  end
  
  private
  
  def grow
      @h += 0.4
  end
  
  def death
      return 'Oh, no! The tree is too old, and has died. :(' if @age == 25
      return 'A year later, the tree is still dead. :('
  end
  
  def make_fruit
      @orange_count = @h * 15 - 25
  end
      
end

tree = OrangeTree.new
28.times do
    tree.one_year_passes
    12.times do tree.pick_an_orange end
    tree.count_the_oranges
    tree.height
end