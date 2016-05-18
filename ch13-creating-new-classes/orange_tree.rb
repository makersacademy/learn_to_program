# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  def initialize
    @height = 0
    @year = 0
    @oranges = 0
  end

  def one_year_passes
    @year += 1
    @height = @year * 0.4
    if @year >= 6
      @oranges = (@height * 15 - 25)
    end
    if @year <= 25
	return "This year your tree grew to #{@height.round(2)}m tall, and produced #{@oranges.to_i} oranges."
    elsif @year == 26
	return "Oh, no! The tree is too old, and has died. :("
    elsif @year > 26
	return "A year later, the tree is still dead. :("
    end
  end

  def count_the_oranges
    if @year < 26 then return @oranges.to_i
    else "A dead tree has no oranges. :(" end
  end

  def height
    if @year < 26 then return @height.round(2)
    else return "A dead tree is not very tall. :(" end
  end

  def pick_an_orange
    @oranges -= 1
    if @oranges < 1 then return "There are no oranges to pick."
    elsif @oranges > 1 && @year < 26 then return "That was a delicious orange!"
    else return "A dead tree has nothing to pick. :(" end
  end
end
