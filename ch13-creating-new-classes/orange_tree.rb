# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  def initialize
    @age = 0 # initial age of tree
    @height = 0 # initial height of tree
   @orange_count = 0 # initially no oranges on tree
  end

  def one_year_passes
    @age = @age + 1 # annual age growth
    @height = (@height + 0.4).round(1) # annual year growth
   
   if @age <= 5
      @orange_count = 0
    elsif @age <= 25
      @orange_count = (@height * 15 - 25) # orange production
        "This year your tree grew to #{@height}m tall, and produced #{@orange_count.round} oranges."
   elsif @age == 26
        "Oh, no! The tree is too old, and has died. :("
    else
        "A year later, the tree is still dead. :("
    end
  end
  

  def height
    if @age <= 25
      @height
    else
      "A dead tree is not very tall. :("
    end
 end

  def count_the_oranges
    if @age <= 25
       @orange_count.round
    else
      "A dead tree has no oranges. :("
    end
  end

  def pick_an_orange
    if @age <=25
       @orange_count = @orange_count - 1
       "You picked up an orange!"
    else
       "A dead tree has nothing to pick. :("
    end
  end
end

=begin

ot = OrangeTree.new
20.times do
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
 
=end
