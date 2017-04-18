# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no count_the_oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree

  def initialize
    @t_height = 0
    @age = 0
    @oranges = 0
  end

  def one_year_passes
    @age += 1
    @t_height += 0.4
    @oranges = (@t_height * 15 - 25) unless @age <= 5

    unless dead?
      "This year your tree grew to #{@t_height.round(1)}m tall, and produced #{@oranges.round} oranges."
    else
      dead
    end
  end

  def dead
    if @age == 26
      "Oh, no! The tree is too old, and has died. :("
    else
      "A year later, the tree is still dead. :("
    end
  end

  def dead?
    @age > 25
  end

  def height
    if dead?
      "A dead tree is not very tall. :("
    else
      @t_height.round(1)
    end
  end

  def count_the_oranges
    if dead?
      "A dead tree has no oranges. :("
    else
      @oranges.round
    end
  end

  def pick_an_orange
    if dead?
      "A dead tree has nothing to pick. :("
    elsif @oranges == 0
      "The orange tree is orangeless. :("
    else
      @oranges
    end
  end
end

ot = OrangeTree.new

23.times do
  ot.one_year_passes
end

ot.one_year_passes
ot.count_the_oranges
ot.height
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.height
ot.count_the_oranges
ot.pick_an_orange
