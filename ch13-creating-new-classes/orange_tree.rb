# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  def initialize
    @age = 0
    @oranges = 0
    @height = 0
    @alive = true
  end

  def height
    if @alive == false
      return "A dead tree is not very tall. :("
    end
    @height = @height
    return @height.round(1)
  end

  def one_year_passes
    if @alive == false
      return 'A year later, the tree is still dead. :('
    end
    @age += 1
    @height += 0.4
    if @age >= 5
      @oranges = (@height * 15) - 25
    end
    if @age >= 25
      @alive = false
      return "Oh, no! The tree is too old, and has died. :("
    end
    return "This year your tree grew to #{@height.round(1)}m tall, and produced #{@oranges.round(0)} oranges."
  end

  def height
    if @alive == false
      return "A dead tree is not very tall. :("
    end
    return @height.round(1)
  end

  def count_the_oranges
    if @alive == false
      return "A dead tree has no oranges. :("
    else
    @oranges.round(0)
    end
  end

  def pick
    if @alive == false
      return "A dead tree has nothing to pick. :("
    end
    if @oranges > 0
      @oranges -= 1
      return "What a delicious orange! There are #{@oranges.round(0)} left to pick."
    end
  end


end
