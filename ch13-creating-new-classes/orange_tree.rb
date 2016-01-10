# Original code for book in comments....
# In order to pass rspec tests I had to change my code

# class OrangeTree

#   def initialize
#     @height = 0
#     @age = 0
#     @orange_count = 0
#     @alive = true
#     puts "Orange tree start grows"
#   end

#   def height
#     if !@alive
#       puts "Tree is dead - no height"
#     else
#       puts "Tree height is #{@height}"
#     end
#   end
#   def one_year_passes
#     @age += 1
#     if @age > 20
#       puts "This tree aged too much and died!"
#       @alive = false
#     else
#       @height += 0.5
#       produce_oranges
#       puts "Tree aged one more year"
#     end
#   end
#   def count_the_oranges
#     if !@alive
#       puts "Tree is dead - no oranges"
#     else
#       puts "Tree has #{@orange_count} oranges"
#     end
#   end
#   def pick_an_orange
#     return puts "Can't pick up from dead tree!" if !@alive
#     @orange_count -= 1
#     return puts "No more oranges this year" if @orange_count < 0
#     puts "This orange was delicious. More #{@orange_count} oranges left"
#   end

#   private
#   def produce_oranges
#     if @age > 5
#       @orange_count = (1..@age).inject(:+)
#     end
#   end
# end

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

