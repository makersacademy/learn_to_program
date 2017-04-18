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
    @height = 0.0
    @alive = true
  end

  def height
    if @alive
      @height.round(2)
    else
      "A dead tree is not very tall. :("
    end
  end

  def one_year_passes
    @age += 1
    @height += 0.4

    @oranges = 0 # all oranges have fallen off
    if @age > 5 && @age <= 25
      @oranges += (@height * 15 - 25).to_i
      "This year your tree grew to #{@height.round(2)}m tall, and produced #{@oranges} oranges."
    elsif @age <= 5
      @oranges = 0
      "This year your tree grew to #{@height.round(2)}m tall, and produced #{@oranges} oranges."
    elsif @age == 26
      @oranges = 0
      @alive = false
      "Oh, no! The tree is too old, and has died. :("
    elsif @age > 26
    	@alive = false
    	"A year later, the tree is still dead. :("
    end
  end

  def count_the_oranges
    if @alive
      @oranges
    else
      "A dead tree has no oranges. :("
    end
  end

  def pick_an_orange
    if @alive
      if @oranges == 0
        "There are no oranges to pick."
      else
        @oranges -= 1
        "There are #{@oranges} oranges."
      end
    else
      "A dead tree has nothing to pick. :("
    end
  end

end
