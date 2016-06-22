# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  def initalize
      @height = 0
      @orange_count = 0
      @alive = true
      @age = 0
  end
  
  def height
      if @alive == true
          @height
      else
          "Tree is dead... no height"
      end
  end
  
  def count_the_oranges
     if @alive == true
         @orange_count
     else
         "Tree is dead... no oranges"
     end
  end
  
  def one_year_passes
      @age += 1
      if @age >= 25
          @alive = false
          "Oh no, the tree died from old age"
      else @height = @height + 0.4
      end
      
      if @age > 5
          @orange_count = (@height*15-25)
          "This year the tree grew to #{@height} and grew #{orange_count} oranges."
      else
          "This year the tree grew to #{@height} but was too young to grow oranges."
      end
  end
  
  ot = OrangeTree.new
  23.times do
      ot.one_year_passes
  end
  
  puts(ot.one_year_passes)