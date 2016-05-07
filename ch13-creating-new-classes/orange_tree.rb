# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree

  def initialize
      @age = 0
      @height = 0
      @orange_count = 0
  end
  
  def one_year_passes
      @age += 1
      @height = (@age * 0.4).round(1)
      if @age < 6
          @orange_count = 0
      elsif (6..25).include? @age
          @orange_count = (@height * 15 - 25).to_i
      end
      
      if @age == 26
         "Oh, no! The tree is too old, and has died. :("
      elsif @age > 26
          "A year later, the tree is still dead. :("
      else
          "This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
      end
  end

  def count_the_oranges
      if @age > 25
          "A dead tree has no oranges. :("
      else
          @orange_count
      end
  end
  
  def height
      if @age > 25
          "A dead tree is not very tall. :("
      else
          @height
      end
  end
  
  def pick_an_orange
      @orange_count -= 1
      if (@orange_count > 0 && @age <= 25)
          "Orange was delicious!"
      elsif @age > 25
          "A dead tree has nothing to pick. :("
      else
          "No more oranges."
      end
  end
  
end

