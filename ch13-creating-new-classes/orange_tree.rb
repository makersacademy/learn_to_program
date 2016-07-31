# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree

  def initialize
    @time = 0
    @alive = true
    @orange_count = 0
    @height = 0
    "You planted an orange tree in your garden!"
  end

  def height
    if @alive
      @height
    else
      "A dead tree is not very tall. :("
    end
  end

  def one_year_passes
    @time += 1
    @orange_count = 0
    @height = (@height + 0.4).round(1)
    if @time < 26
      grow_oranges
      "This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
    else
      dead?
    end
  end

  def count_the_oranges
    if @alive
      @orange_count
    else
      "A dead tree has no oranges. :("
    end
  end

  def pick_an_orange
    if @alive
      if @orange_count == 0
        "There are no oranges on this tree to pick!"
      else
        @orange_count -= 1
        "You pick an orange from the tree. It was delicious!"
      end
    else
      "A dead tree has nothing to pick. :("
    end
  end

private

  def grow_oranges
    if @time > 5
      @orange_count = (@height * 15 - 25).to_i
    end
  end

  def dead?
    if @time == 26
      @alive = false
      "Oh, no! The tree is too old, and has died. :("
    elsif @time > 26
      @alive = false
      "A year later, the tree is still dead. :("
    end
  end

end
