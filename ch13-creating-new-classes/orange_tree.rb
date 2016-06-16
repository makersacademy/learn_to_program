# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree

  def initialize
    @height = 0
    @oranges = 0
    @alive = true
  end

  def height
    if @alive
      @height.round(1)
    else
      "A dead tree is not very tall. :("
    end
  end

  def one_year_passes
    if @alive
      @height = @height.round(1) + 0.4
      @oranges = 0
      if @height > 10 && rand(2) > 0
        @alive = false
        "Oh, no! The tree is too old, and has died. :("
      elsif @height > 2
        @oranges = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height}m tall," + " and produced #{@oranges} oranges."
      else
        "This year your tree grew to #{@height}m tall," + "but is still too young to bear fruit."
      end
    else
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
      if @oranges > 0
        @oranges -= 1
        "You pick a juicy, delicious orange!"
      else
        "You search every branch, but find no oranges."
      end
    else
      "A dead tree has nothing to pick. :("
    end
  end
end

ot = OrangeTree.new
23.times do
  ot.one_year_passes
  puts (ot.height)
end

puts (ot.one_year_passes)
puts (ot.count_the_oranges)
puts (ot.height)
puts (ot.one_year_passes)
puts (ot.one_year_passes)
puts (ot.one_year_passes)
puts (ot.one_year_passes)
puts (ot.one_year_passes)
puts (ot.height)
puts (ot.count_the_oranges)
puts (ot.pick_an_orange)
