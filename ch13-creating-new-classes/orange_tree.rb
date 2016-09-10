# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.



# note we have added a rounding operation on the height to ensure
# the output is sensible in terms of decimal places

class OrangeTree
  def initialize
    @age = 0
    @height = 0
    @orange_count = 0
    @alive = true
  end

  def height
    if @alive
      @height.round(1)
    else
      'A dead tree is not very tall. :('
    end
  end

  def count_the_oranges
    if @alive
      @orange_count
    else
      'A dead tree has no oranges. :('
    end
  end

     def one_year_passes
   @orange_count = 0
   @age += 1
   @height = (@height + 0.4).round(1)
  if @alive
     if @age > 25
        @alive = false
        "Oh, no! The tree is too old, and has died. :("
      elsif @age > 5
        @orange_count += (@height * 15 - 25).round
        "This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
      end
    else
      'A year later, the tree is still dead. :('
    end
  end

  def pick_an_orange
    if @alive
      if @orange_count > 0
        @orange_count = @orange_count - 1
        'You pick a juicy, delicious orange!'
      else
        'You search every branch, but find no oranges.'
      end
    else
      'A dead tree has nothing to pick. :('
    end
  end
end
