# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree

  def initialize
    @alive = true
    @height = 0
    @orange_count = 0
  end

  def height
    if @alive
      @height
    else
      "A dead tree is not very tall. :("
    end
  end

  def count_the_oranges
    if @alive
      @orange_count
    else
      "A dead tree has no oranges. :("
    end
  end

  def one_year_passes
    if @alive
      @height = (@height + 0.4).round(2)
      @orange_count = 0
      if @height > 25 * 0.4
        @alive = false
        "Oh, no! The tree is too old, and has died. :("
      elsif @height > 0.4 * 5
        @orange_count = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height.round(2)}m tall, and produced #{@orange_count.to_i} oranges."
      else
        "This year your tree grew to #{@height}m tall."
      end
    else
      "A year later, the tree is still dead. :("
    end
  end

  def pick_an_orange
    if @alive
      if @orange_count > 0
        @orange_count = @orange_count - 1
        "You picked an orange."
      else
        "No oranges to pick."
      end
    else
      "A dead tree has nothing to pick. :("
    end
  end
end



















