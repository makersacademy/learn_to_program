# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree

  def initialize
    @height  = 0.0
    @num_ora = 0
    @age     = 0
    @alive   = true
  end

  def height
    if @alive
      @height
    else
      'A dead tree is not very tall. :('
    end
  end

  def one_year_passes
    if @alive
    @height = (@height + 0.4).round(1)
    #@height = @height.round(1)
    @age   += 1
    @num_ora = 0
      if @age > 5 && @age <= 25
        #produces oranges
        @num_ora = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height.round(1)}m tall, and produced #{@num_ora} oranges."
      elsif @age > 25
        @num_ora = 0
        @alive = false
        'Oh, no! The tree is too old, and has died. :('
      else
        "This year your tree grew to #{@height.round(1)}m tall, and produced #{@num_ora} oranges."
      end
    else
      'A year later, the tree is still dead. :('
    end
  end

  def count_the_oranges
    if @alive
      @num_ora
    else
      'A dead tree has no oranges. :('
    end
  end

  def pick_an_orange
    if @alive
      if @num_ora == 0
        "No more oranges to pick this year"
      else
        @num_ora -= 1
        'You pick a juicy, delicious orange!'
      end
    else
      'A dead tree has nothing to pick. :('
    end
  end
end

ot = OrangeTree.new

23.times do
  ot.one_year_passes
end
puts(ot.one_year_passes)
puts(ot.count_the_oranges)
puts(ot.height)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.height)
puts(ot.count_the_oranges)
puts(ot.pick_an_orange)
