# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  def initialize
    @height = 0.0
    @orange_count = 0
    @alive = true
    puts 'You\'ve planted an orange tree!'
  end

  def one_year_passes
    if @height < 10.0
      @height += 0.4
      @orange_count = 0
      if @height > 2.0
        @orange_count += (@height * 15 - 20).to_i
      end
      puts "This year your tree grew to #{@height.round(1)}m tall, and produced #{@orange_count} oranges."
    else
      @alive = false
      puts 'Oh, no! The tree is too old, and has died. :('
    end
  end

  def count_the_oranges
    if @alive
      if @orange_count > 0
        puts "Your tree has #{@orange_count} oranges."
      else
        puts "Sorry, your tree doesn\'t have any oranges."
      end
    else
      "A dead tree has no oranges. :(."
    end
  end

  def pick_an_orange
    if @alive
      if @orange_count > 0
        @orange_count -= 1
        puts 'You picked an orange!'
      else
          puts "Sorry, your tree doesn\'t seem to have any oranges!"
      end
    else
        puts "A dead tree has nothing to pick. :("
    end
  end
end
