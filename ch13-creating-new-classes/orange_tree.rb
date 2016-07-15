# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree

  def initialize
    @still_alive = true
    @height = 0
    @oranges = 0
  end

  def height
    if @still_alive
    @height.round(1)
    else
      'A dead tree is not very tall. :('
    end
  end

  def count_the_oranges
    if @still_alive
      @oranges
    else
      'A dead tree has no oranges. :('
    end
  end

  def one_year_passes
    # My initial code below
    # if @age <= 25
    #   @height_of_tree += 0.4
    #   @still_alive += 1
    #   puts "This year your tree grew to #{@height}m tall, and produced #{@oranges} oranges."
    #   #Oranges per year
    #   @oranges = @height * 15 - 25 if @still_alive > 5
    # else
    #   puts 'Oh, no! The tree is too old, and has died. :('
    # end
    # Chris Pine's slightly better code
    if @still_alive
      @height += 0.4
      @oranges = 0 # old oranges fall off
      if @height > 10 && rand(2) > 0
        # tree dies
        @still_alive = false
        'Oh, no! The tree is too old, and has died. :('
      elsif @height > 2
        # new oranges grow
        @oranges = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height.round(1)}m tall, and produced #{@oranges} oranges."
      else
        "This year your tree grew to #{@height.round(1)}m tall," \
          " but is still too young to bear fruit."
      end
    else
      'A year later, the tree is still dead. :('
    end
  end

  def pick_an_orange
    if @still_alive
      if @oranges > 0
        @oranges -= 1
        'That orange was absolutely delicious!'
      else
        'Sorry, the tree has no more oranges. You will just have'\
          ' to wait until next year.'
      end
    else
      'A dead tree has nothing to pick. :('
    end
  end
end

# ot = OrangeTree.new
# 25.times do
#   ot.one_year_passes
# end
# puts ot.height
# ot.one_year_passes
# ot.one_year_passes
# ot.one_year_passes
# # ot.one_year_passes
# # ot.one_year_passes
