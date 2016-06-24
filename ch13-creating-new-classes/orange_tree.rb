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
    @current_number_of_oranges = 0
    @total_oranges = 0
    @alive = true
  end

  def height
      "#{@height} metres tall"
  end

  def age
    if @alive == true
    if @age < 6
      "At #{@age} years old the tree is but a young sapling, barely rising above the ground"
    elsif @age < 15 && @age >= 6
      "At #{@age} years of age, the tree is quickly becoming a thing of beauty."
    else
      "Tree is #{@age} years old, and is a thing to behold!"
    end
  else
    "The tree died at a respectable 26 years of age"
  end
end



  def how_many_oranges?
    if @alive == true
      @current_number_of_oranges
    else
      "Alas, a dead tree grows no oranges"
    end
  end

  def another_year
    if @alive == true
      @height += 0.4
      @age += 1
      @current_number_of_oranges = 0
      if @age > 25
        @alive = false
        "After a long and fruitful career as a tree, the Orange Tree dies."
        "The tree grew to be #{@height} metres tall, and produced a grand total of #{@total_oranges} oranges."
      elsif @age <= 25 && @age >= 6
        @current_number_of_oranges = ((@height * 15) - 25).to_i
        @total_oranges += @current_number_of_oranges
        "Your tree is now #{@height} metres tall and has produced #{@number_of_oranges} oranges this year"
      else
        "Your tree is now #{@height} metres tall, but is still too young to produce any fruit."
      end
    else
      "Unfortunately, the tree is still dead and can't grow or produce any more fruit"
    end
  end

def pick_an_orange
  if @alive == true
    if @current_number_of_oranges > 0
      @current_number_of_oranges -= 1
      "Mmmmm, that's one tasty orange"
    else
      puts "There aren't any oranges to pick!"
    end
  else
    "The tree is dead nad has no oranges, and it never will again :("
  end
end

end

ot = OrangeTree.new

puts(ot.another_year)
puts(ot.another_year)
puts(ot.another_year)
puts(ot.another_year)
puts(ot.height)
puts(ot.another_year)
puts(ot.another_year)
puts(ot.another_year)
puts(ot.another_year)
puts(ot.pick_an_orange)
puts(ot.age)
18.times do
  ot.another_year
end
puts(ot.another_year)
