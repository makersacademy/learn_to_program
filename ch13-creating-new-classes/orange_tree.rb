# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  def initialize
    puts "You plant the orange tree seed."
    @height = 0
    @age = 0
    @alive = true
    @orange_count = 0
  end

  def height
    if @alive == false
      return "A dead tree is not very tall. :("
    else
      return @height.round(1)
    end
  end

  def count_the_oranges
    if @alive == false
      return "A dead tree has no oranges. :("
    else
      return @orange_count.to_i
    end
  end

  def pick_an_orange
    if @alive == false
      return "A dead tree has nothing to pick. :("
    elsif @orange_count == 0
      return "Damn, no more oranges left to pick!"
    else
      @orange_count -= 1
      return "You pick an orange. These oranges sure are delicious!"
    end
  end

  def one_year_passes
    @height += 0.4
    @age += 1
    if @age > 5
      @orange_count = @height * 15 - 25
    end
    if @age == 26
      @alive = false
      return  "Oh, no! The tree is too old, and has died. :("
    elsif @age > 26
      return  "A year later, the tree is still dead. :("
    end
    return "This year your tree grew to #{@height.round(1)}m tall, and produced #{@orange_count.to_i} oranges."
  end

end

ot = OrangeTree.new

23.times do
  puts ot.one_year_passes
end

puts ot.count_the_oranges
puts ot.pick_an_orange
puts ot.pick_an_orange
puts ot.count_the_oranges
puts ot.height
puts ot.one_year_passes
puts ot.pick_an_orange
puts ot.one_year_passes
puts ot.height
puts ot.count_the_oranges
puts ot.pick_an_orange
puts ot.count_the_oranges
puts ot.one_year_passes
