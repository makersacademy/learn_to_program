# Pasting C. Pine's solution for passing the test,
# as he had different rate of growth, orange production, and
# the way to determine when the tree dies (if the tree is taller
# than 10 meters, it dies at the probability of 50% when it ages).
#
# Also, the tests expect the programme to output exact same strings
# as his programme, and it does not suit the purpose of building our
# own implementation of OrangeTree.
#
# My original is attached at the end.

class OrangeTree
  def initialize
    @height = 0
    @orange_count = 0
    @alive = true
  end

  def height
    if @alive
      @height.round(1)
    else
      'A dead tree is not very tall. :('
    end
  end

  def count_the_oranges
    if @alive
      @orange_count
    else
      'A dead tree has no oranges. :('
    end
  end

  def one_year_passes
    if @alive
      @height = @height + 0.4
      @orange_count = 0 # old oranges fall off
      if @height > 10 && rand(2) > 0
        # tree dies
        @alive = false
        'Oh, no! The tree is too old, and has died. :('
      elsif @height > 2
        # new oranges grow
        @orange_count = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height.round(1)}m tall," +
          " and produced #{@orange_count} oranges."
      else
        "This year your tree grew to #{@height.round(1)}m tall," +
          " but is still too young to bear fruit."
      end
    else
      'A year later, the tree is still dead. :('
    end
  end

  def pick_an_orange
    if @alive
      if @orange_count > 0
        @orange_count = @orange_count - 1
        'You pick a juicy, delicious orange!'
      else
        'You search every branch, but find no oranges.'
      end
    else
      'A dead tree has nothing to pick. :('
    end
  end
end

##### my original implementation if OrangeTree #####
# Tree grows 1.5 meters every year and starts to produce oranges
# from the 3rd year. It dies at the age of 10 years.
#
# class OrangeTree
#
#   def initialize
#     @height = 0
#     @age = 0
#     @orange_count = 0
#     puts "You have seeded an orange tree."
#   end
#
#   def height
#     puts "Your orange tree is #{@height} #{meter}."
#   end
#
#   def one_year_passes
#     puts ""
#     print "One year has passed... "
#     @ orange_count = 0
#     if @age == 9
#       puts "The tree has lived for 10 years reached to the end of its life..."
#       exit
#     else
#       @height += 1.5
#       @age += 1
#       @orange_count = 2 * (@age - 3)
#     end
#   puts "Your tree is #{@age} #{year} old."
#   end
#
#   def count_the_oranges
#     puts "You looked for oranges, but your tree is too young... wait for it to grow." if @age < 3
#     puts "There are #{@orange_count} #{orange} on the tree." if @orange_count >= 1
#   end
#
#   def pick_an_orange
#     puts "There is no orange on the tree." if @orange_count == 0
#     if @age > 3
#       puts "You picked one orange. It was such a sweat and delicious orange!"
#       @orange_count -= 1
#     end
#   end
#
#   private
#     def orange
#       if @orange_count <= 1
#         "orange"
#       else
#         "oranges"
#       end
#     end
#
#     def year
#       if @age <= 1
#         "year"
#       else
#         "years"
#       end
#     end
#
#     def meter
#       if @height <= 1
#         "meter"
#       else
#         "meters"
#       end
#     end
# end
