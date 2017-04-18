# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree

  def initialize
    @height = 0
    @orange_count = 0
    @alive = true
  end

  def height
    if age <= 25
    @height
    else
    @height = 0
    puts 'A dead tree is not very tall. :('
  end

  def one_year_passes
    @age += 1
    @orange_count = 0
    @height = @height * 1.4
      if @age <= 5
        @orange_count = 0
      elsif @age > 5 && @age <= 25
        @orange_count = @height * 15 - 25
      elsif @ge == 26
        @live = false
        puts 'Oh, no! The tree is too old, and has died. :('
      else
        puts 'A year later, the tree is still dead. :('
      end
  end

  def count_the_oranges
    if @alive
      @orange_count
    else
      'A dead tree has no oranges. :('
    end
  end

  def pick_an_orange
    if @age <= 5
    puts 'This tree is too young to produce any oranges'
    elsif @age > 25
    puts 'A dead tree has nothing to pick. :('

    elsif @orange_count > 1
    @orange_count -= 1
    puts 'This orange is delicious'
    else
    puts 'There are no fruits left for you to pick'
    end

  end

end
