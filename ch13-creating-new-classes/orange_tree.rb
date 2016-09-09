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
    @oranges = 0
  end

  def height
    if @age <= 25
      @height
    else
      "A dead tree is not very tall. :("
    end
  end

  def one_year_passes
    @age += 1
    @height = (@age * 0.4).round(1)
    if @age <= 5
      @oranges = 0
    elsif @age <= 25
      @oranges = (@height * 15 - 25)
        "This year your tree grew to #{@height}m tall, and produced #{@oranges.round} oranges."
    elsif @age == 26
        "Oh, no! The tree is too old, and has died. :("
    else
        "A year later, the tree is still dead. :("
    end
  end

  def count_the_oranges
    if @age <= 25
       @oranges.round
    else
       "A dead tree has no oranges. :("
    end
  end

  def pick_an_orange
    if @age <=25
       @oranges -= 1
    else
       "A dead tree has nothing to pick. :("
    end
  end
end

