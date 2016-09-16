# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  def initialize
    @year = 0
  end
  def height
    if @year > 25
      'A dead tree is not very tall. :('
    else
      (0.4 * @year).round(2)
    end
  end
  def count_the_oranges
    if @year < 0
      @oranges_at_start_of_season =  0
    elsif @year < 26
      (height * 15 - 25).to_i
    else
      'A dead tree has no oranges. :('
    end
  end
  def pick_an_orange
    if @year < 26
      @oranges_at_start_of_season -= 1
    else
      'A dead tree has nothing to pick. :('
    end
  end
  def one_year_passes
    @year += 1
    if @year < 26
      "This year your tree grew to #{height}m tall, and produced #{count_the_oranges} oranges."
    elsif @year == 26
      'Oh, no! The tree is too old, and has died. :('
    else
      'A year later, the tree is still dead. :('
    end
  end
end

ot = OrangeTree.new


      ot.one_year_passes