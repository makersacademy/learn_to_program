# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  
  def initialize
    @height = 0
    @age = 0
    @orange_count = 0
    @first_fruit = 6
    @year_of_death = 26
    @growth_rate = 0.4
  end

  def height
    dead? ? "A dead tree is not very tall. :(" : @height
  end

  def one_year_passes
    return "A year later, the tree is still dead. :(" if dead?
    @age = @age + 1
    return "Oh, no! The tree is too old, and has died. :(" if dead?
    @height = (@height + @growth_rate).round(1)
    @orange_count = @age >= @first_fruit ? (@height * 15 - 25).to_i : 0
    "This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
  end

  def count_the_oranges
    dead? ? "A dead tree has no oranges. :(" : @orange_count
  end

  def pick_an_orange
    dead? ? "A dead tree has nothing to pick. :(" : "You pick and eat an orange off the tree. Mmm, delicious!"
  end

  private

  def dead?
    @age >= @year_of_death
  end

end
