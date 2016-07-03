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
      @height.round(2)
    else
      "A dead tree is not very tall. :("
    end
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



  def count_the_oranges
    if @alive == true
      @number_of_oranges
    else
      "A dead tree has no oranges. :("
    end
  end

  def one_year_passes
    if @alive == true
      @height += 0.4
      @age += 1
      @number_of_oranges = 0
      if @age > 25
        @alive = false
        "After a long and fruitful career as a tree, the Orange Tree dies."
        'Oh, no! The tree is too old, and has died. :('
      elsif @age <= 25 && @age >= 6
        @number_of_oranges = ((@height * 15) - 25).to_i
        "This year your tree grew to #{@height.round(2)}m tall, and produced #{@number_of_oranges} oranges."
      else
        "Your tree is now #{@height.round(2)} metres tall, but is still too young to produce any fruit."
      end
    else
      "A year later, the tree is still dead. :("
    end
  end

def pick_an_orange
  if @alive == true
    if @number_of_oranges > 0
      @number_of_oranges -= 1
      "Mmmmm, that's one tasty orange"
    else
      puts "There aren't any oranges to pick!"
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
puts(ot.height)
puts(ot.count_the_oranges)
puts(ot.pick_an_orange)
