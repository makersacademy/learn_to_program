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
    @alive = true
  end

  def height
    @alive == true ? @height = ((@age * 0.4)).round(1) : "A dead tree is not very tall. :("
  end

  def grow_oranges
    if @alive == true
      @oranges = (@height * 15 - 25) unless @age <= 5
    else
      @oranges = 0
    end
  end

  def count_the_oranges
    @alive == true ? @oranges.to_i : "A dead tree has no oranges. :("
  end

  def pick_an_orange
    if @alive == true
      @oranges =-1 unless @orange == 0
    else
      "A dead tree has nothing to pick. :("
    end
  end

  def die
    @alive = false
  end

  def one_year_passes
    @age += 1
    if @age == 26
        self.die
      end
    self.height unless @alive == false
    self.grow_oranges unless @alive == false
    return "Oh, no! The tree is too old, and has died. :(" if @age == 26
    return "This year your tree grew to #{@height}m tall, and produced #{@oranges.to_i} oranges." if @alive == true
    return "A year later, the tree is still dead. :(" if @alive == false
  end

end

ot = OrangeTree.new

26.times do
  puts ot.one_year_passes
end
