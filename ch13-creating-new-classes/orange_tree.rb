# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  # your code here

  def initialize
    @age = 0
    @height = 0
    @alive = true
    @oranges = 0
  end

  def count_the_oranges
    if @alive
      @oranges.to_i
    else
      return "A dead tree has no oranges. :("
    end
  end

  def height
    if @alive
      @height
    else
      return "A dead tree is not very tall. :("
    end
  end

  def pick_an_orange
    if @alive
      @oranges -= 5
    else
      return "A dead tree has nothing to pick. :("
    end
  end

  def one_year_passes
    if @alive
      if @age < 25
        @age += 1
        @height = (@height + 0.4).round(2)
        orange_production
        return "This year your tree grew to #{@height}m tall, and produced #{@oranges.to_i} oranges."
      elsif @age == 25
        @alive = false
        return "Oh, no! The tree is too old, and has died. :("
      end
    else
      return "A year later, the tree is still dead. :("
    end
  end

  def orange_production
    if @alive == true
      if @age > 5
        @oranges = @height * 15 - 25
      end
    end
  end
end
