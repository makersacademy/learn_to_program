#class OrangeTree

#  def initialize
#    @height = 0
#    @orange_count = 0
#    @age = 0
#    puts "A new orange tree has been planted :-)"
#  end

#  def height
#    if @age < 1
#      puts "The orange tree has just been planted!"
#    elsif @height == 1
#        puts "The orange tree is #{@height} foot tall."
#    else
#    puts "The orange three is #{@height} feet tall."
#    end
#  end

#  def one_year_passes
#    @height = @height + 1
#    @age = @age + 1
#    @orange_count = 0
#    if @age == 3
#      @orange_count += 10
#    end
#    if @age > 3 && @age <= 20
#      @orange_count = ((@orange_count += 10) * @age) -20
#    end
#    if @age > 20
#      puts "The orange tree died :-("
#    exit
#    end
#  end

#  def count_the_oranges
#    if @orange_count == 0 and @age < 3
#    puts "The tree is too young to produce oranges but the blossoms smell lovely!"
#    elsif @orange_count == 1
#      puts "There is #{@orange_count} orange on the tree."
#    else
#      puts "There are #{@orange_count} oranges on the tree."
#    end
#  end

#  def pick_an_orange
#    if @orange_count > 0
#      @orange_count = @orange_count - 1
#      puts "That orange was delicious!"
#    else
#      puts "There are no more oranges to pick this year."
#  end
#end
#end

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

# ot = OrangeTree.new
# 23.times do
#   ot.one_year_passes
# end

# puts(ot.one_year_passes)
# puts(ot.count_the_oranges)
# puts(ot.height)
# puts(ot.one_year_passes)
# puts(ot.one_year_passes)
# puts(ot.one_year_passes)
# puts(ot.one_year_passes)
# puts(ot.one_year_passes)
# puts(ot.height)
# puts(ot.count_the_oranges)
# puts(ot.pick_an_orange)


