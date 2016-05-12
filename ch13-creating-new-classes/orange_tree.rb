# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  attr_reader :height, :fruit

  def initialize
    @height = 0
    @fruit = 0
    @dead = false
  end

  def one_year_passes
    dead?
    if @dead == false
      if @height < 10.4 && @dead == false
        return "This year your tree grew to #{@height}m tall, and produced #{@fruit} oranges."
      elsif @height == 10.4
        @dead = true
        return "Oh, no! The tree is too old, and has died. :("
      end
    end

    if @dead == true
        return "A year later, the tree is still dead. :("
    end
  end

  def count_the_oranges
    @fruit
  end

  def pick_an_orange
    if @dead =false
      @fruit -= 1
    else
      return 'A dead tree has nothing to pick. :('
    end
  end

  private
  def dead?
    if @dead == false
      @height += 0.4
      @height = @height.round(1)
      fruit?
    else
      @height = "A dead tree is not very tall. :("
      @fruit = "A dead tree has no oranges. :("
    end
  end

  @@fruit_per_year = 0

  def fruit?
    if @height >= 2.8
      @fruit = @@fruit_per_year
       @@fruit_per_year += 7
    end
    if @height >= 9.6
      @@fruit_per_year -= 1
    end
  end
end
