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
    @alive = true
    @oranges = 0
  end

  def one_year_passes
    passage_of_time
    if @age == 26 && @alive == false
      return 'Oh, no! The tree is too old, and has died. :('
    elsif @age > 26 && @alive == false
      return 'A year later, the tree is still dead. :('
    elsif @alive == true && @age > 5
      return "This year your tree grew to #{@height}m tall, and produced #{@oranges} oranges."
    end
  end

  def height
    if @alive == true
      @height
    else
      return 'A dead tree is not very tall. :('
    end
  end

  def count_the_oranges
    if @alive == false
      return 'A dead tree has no oranges. :('
    else
      @oranges
    end
  end

  def pick_an_orange
    return 'A dead tree has nothing to pick. :(' if @alive == false
  end

  private ## Under the trunk :)

  def passage_of_time
    @age += 1
    @oranges = 0 # old oranges fall off
    @height += 0.4
    @height = @height.round(2)
    if @age > 5 && @alive == true
      @oranges = (@height * 15 - 25).to_i
    end
    if @age > 25
      @alive = false
    end
  end

end
