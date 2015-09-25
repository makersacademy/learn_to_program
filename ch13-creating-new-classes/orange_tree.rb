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
      if @height > 10.1
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





# class OrangeTree 
#   def initialize
#     @tree_name = ('A'..'Z').to_a.shuffle[0..4].join
#     @age = rand(2..5)
#     @height_mod = rand(0.6..1)
#     @death = rand(40..60)
#     @fruit = 10
#     @optimum_age = @death / 2
#     @max_fruit_harvest = 1.5*@death
#     new_tree
#   end

#   def death_count
#     puts "tree will die in #{@death - @age} years :'("
#   end

#   def one_year_passes
#     @age = @age + 1
#     height   
#     fruit
#     puts "This year your tree grew to #{@height}m tall, and produced #{@fruit} oranges."
 
#   end

#   def height
#     if @age < 15
#       @height = ((@age * 30) * @height_mod).round(1)
#     else
#       @height = (460 * @height_mod).round(1)
#     end
#     p

#   end 


#   def count_the_oranges
#     puts "there are #{@fruit} oranges left"
#   end

#   def pick_an_orange
#     x = @fruit > 1 ? "you ate a chilli instead" : "no more chillis : ("
#     puts x
#     @fruit -= 1 
#   end


#   private
#   ################
#   def new_tree 
#     puts "This year your tree grew to #{@height}m tall, and produced #{@fruit} oranges."
#     # puts "new seed planted ID:#{@tree_name}."
#     # puts 'the tree grows'
#     # loading
#     # puts "the tree is now #{@age}"
#   end

#   def loading
#     count = 0
#     while count < 3
#       print '- '
#       sleep(1)
#       count += 1
#     end
#       puts "\n"
#   end

#   def fruit
#     if @age < 5
#       puts "no fruit yet"
#     elsif @age < @optimum_age
#       @fuit = @max_fruit_harvest -(@optimum_age - @age)
#     else
#       @fruit = @max_fruit_harvest
#     end
#   end


# end


# x = OrangeTree.new
# x.one_year_passes
# x.height
# x.count_the_oranges
# x.one_year_passes
# x.death_count
# x.height
# x.pick_an_orange

# x.one_year_passes
# x.one_year_passes
# x.height
# x.death_count
# x.pick_an_orange

