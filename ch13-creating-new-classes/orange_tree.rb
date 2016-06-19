# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree

  def initialize
    @age = 0
    @height_of_tree = 0
    @oranges = 0
  end

  def height
    if @age <= 25
      @height
    else
      'A dead tree is not very tall. :('
    end
  end

  def one_year_passes
    if @age <= 25
      @height_of_tree += 0.4
      @age += 1
      puts "This year your tree grew to #{@height}m tall, and produced #{@oranges} oranges."
    else
      puts 'Oh, no! The tree is too old, and has died. :('
    end
  end

  def count_the_oranges
    if @age <= 25
      if @oranges > 0
        puts "There are #{@oranges} left for you to eat."
      else
        puts 'There are no more oranges on the tree.'
      end
    else
      puts 'A dead tree has no oranges. :('
    end
  end

  def pick_an_orange
    if @age <= 25
      if @oranges > 0
        @oranges -= 1
        puts 'That orange was absolutely delicious!'
      else
        puts 'Sorry, the tree has no more oranges. You will just have to wait until next year.'
      end
    else
      puts 'A dead tree has nothing to pick. :('
    end
  end
end


un = OrangeTree.new
un.one_year_passes
un.one_year_passes
