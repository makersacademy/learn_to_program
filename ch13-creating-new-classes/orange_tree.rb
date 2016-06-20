# in order to pass the rspec please follow the below rates of growth,
# orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges
# at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to
# see what strings we're looking for in the responses.


class OrangeTree
  def initialize
    @age = 0
    @height = 0.0
    @ripe_oranges = 0
    @alive = true
  end

  def one_year_passes
    @age +=1
    @height += 0.4
    if @age <= 5
      @ripe_oranges = 0
    elsif @age == 26
      @alive = false
      @ripe_oranges = 0
      return 'Oh, no! The tree is too old, and has died. :('
    elsif @alive == false
      return 'A year later, the tree is still dead. :('
    else
      @ripe_oranges = (@height * 15 - 25).round.to_i
    end
    return "This year your tree grew to #{@height.round(1)}m tall, and produced #{@ripe_oranges} oranges."

  end

  def height
    if @alive
      @height.round(1)
    else
      return "A dead tree is not very tall. :("
    end
  end

  def count_the_oranges
      if @alive
        @ripe_oranges
      else
        return 'A dead tree has no oranges. :('
      end
  end

  def pick_an_orange
    if @ripe_oranges > 0
      @ripe_oranges -= 1
    elsif @ripe_oranges == 0 && @alive
      return "There are no more to pick."
    else
      return 'A dead tree has nothing to pick. :('
    end
  end

end
