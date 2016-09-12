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
      @age = 0
      @alive = true
  end

def height
  if @alive
    @height
  else
    'A dead tree is not a very tall tree...'
  end
end

def age
  if @age
    @age
  else
    'This tree only reaches 25 years...'
  end
end

def count_the_oranges
  if @alive
    @orange_count
  else
    'A dead tree has no oranges...'
  end
end

def one_year
  if @alive
    @age = @age + 1
    @height = @height + 0.4
    @orange_count = 0
    if @age > 25
      @alive = false
      'This tree is too old, it has died.'
    elsif @age > 5
      @orange_count = (@height * 15 - 25).to_i
      "This year the tree has grown to #{@height}m tall, " +
      "and it has produced #{@orange_count} oranges."
    else
      "This year the tree grew to #{@height}m tall, " +
      "but it is too young to bear fruit."
    end
  else
    'A year on, this tree is still dead.'
  end
end
def pick_an_orange
  if @alive
    if @orange_count > 1
      @orange_count = @orange_count - 1
      "You've picked a juicy, delicious orange!"
    else
      "Your search all of the branches, but there is no oranges."
    end
  else
    "A dead tree has nothing to pick."
  end
end
end

ot = OrangeTree.new
23.times do
  ot.one_year
end

puts(ot.one_year)
puts(ot.count_the_oranges)
puts(ot.height)
puts(ot.one_year)
puts(ot.one_year)
puts(ot.one_year)
puts(ot.one_year)
puts(ot.one_year)
puts(ot.height)
puts(ot.count_the_oranges)
puts(ot.pick_an_orange)
