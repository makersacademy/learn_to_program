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
      @number_of_oranges = 0
      @alive = true
  end

  def height
    if @alive
      @height.round(1)
    else
      "A dead tree is not very tall. :("
    end
  end

  def age
    if @age < 26 
      "The orange tree is #{@age} years old"
    else
       "The orange tree is dead and withered away... The orange tree became 25 years old, and became #{@height.round(1)} meters tall."
    end
  end

  def one_year_passes
    if @alive
      @height = @height + 0.4
      @age = @age + 1
      @number_of_oranges = 0 #old oranges falls off
      if @age > 25 && @height > 10
        @alive = false
        "Oh, no! The tree is too old, and has died. :("
      elsif @age > 5
        @number_of_oranges = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height.round(1)}m tall, and produced #{@number_of_oranges} oranges."
      else
        @number_of_oranges = 0
      end
    else 
      "A year later, the tree is still dead. :("
    end
  end

  def count_the_oranges
    if @alive
      @number_of_oranges
    else 
      "A dead tree has no oranges. :("
    end
  end

  def pick_an_orange
    if @alive
      if @number_of_oranges > 0
        @number_of_oranges = @number_of_oranges - 1
        "That was an delicious orange, but now there are #{@number_of_oranges} left on the orange tree this year."
      else
         "Some greedy peopel ate all the oranges!"
      end
    else
      "A dead tree has nothing to pick. :("
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