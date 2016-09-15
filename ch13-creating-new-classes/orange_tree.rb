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
  
  def one_year_passes
      @age +=1
      @orange_count = 0 #just to make sure all oranges fell off
      if @age > 25
          death
      else
          grow
          if @age > 5
              make_fruit
          end
          "This year your tree grew to #{@h.round(1)}m tall, and produced #{@orange_count.round} oranges."
      end
  end
  
  def count_the_oranges
      if @age > 25
        'A dead tree has no oranges. :('
      else
        @orange_count.round
      end
  end
  
  def height
      if @age > 25
          'A dead tree is not very tall. :('
      else
        @h.round(1)
      end
  end
  
  def pick_an_orange
      return 'A dead tree has nothing to pick. :(' if @age > 25
      if @orange_count > 0
        @orange_count -= 1
        'Mmmmmmmmm. Delicious.'
      else
        'No oranges. Sadness. :('
      end
  end
  
  private
  
  def grow
      @h += 0.4
  end
  
  def death
      if @age == 26
        'Oh, no! The tree is too old, and has died. :('
      else
        'A year later, the tree is still dead. :('
      end
  end
  
  def make_fruit
      @orange_count = @h * 15 - 25
  end
      
end

tree = OrangeTree.new
28.times do
      puts tree.one_year_passes
end
