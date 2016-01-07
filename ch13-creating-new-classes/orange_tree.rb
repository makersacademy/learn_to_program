# This version passes the rspec test
class OrangeTree
  def initialize
    @age = 0
    @height = 0
    @alive = true
    @orange_count = 0
    puts "You plant a seed"
  end
  
  def height
    if @alive
      @height.round(2)
    else
      return "A dead tree is not very tall. :("
    end
  end
  
  def count_the_oranges
    if @age > 1 && @alive
      if @age == 24
        @orange_count = 5 * @age - 1
      else
        @orange_count = 5 * @age
      end
    else
      "A dead tree has no oranges. :("
    end
  end
  
  def pick_an_orange
    if @alive
      @orange_count -= 1
    else
      "A dead tree has nothing to pick. :("
    end
  end
  
  def one_year_passes
    @age += 1
    if @age < 26
      @height = @height + 0.4
      @orange_count = 0 
      return "This year your tree grew to #{height}m tall, and produced #{count_the_oranges} oranges."
    else
      @alive = false
      return "Oh, no! The tree is too old, and has died. :(" if @age ==26
      return "A year later, the tree is still dead. :(" if @age > 26
    end
  end
end

# Below is my own version
#class OrangeTree
#  def initialize
#    @age = 0
#    @height = 0
#    @orange_count = 0
#    @alive = true
#    puts "You plant a seed"
#  end
#  
#  def height
#    if @alive
#      puts "Your tree is #{@height} feet high"
#      one_year_passes
#    end
#  end
#  
#  def pick_oranges
#  if @alive
#      if @age < 5
#        puts "Your tree isn't old enough. Wait a few more years"
#      else
#        if @orange_count == 0
#          orange_count
#        end
#        if @orange_count > 1
#          @orange_count -= 1
#          puts "You pick an orange from the tree"
#          puts "Damn, that was a tasty orange!"
#          puts "#{@orange_count} oranges left"
#        else 
#          puts "You've picked them all! Wait until next year"
#        end
#      end
#    end
#  end
#  
#  def count_oranges
#    if @alive
#      if @orange_count == 0
#        orange_count
#      end
#      if @age < 5
#        puts "Your tree can't produce oranges yet."
#      elsif @age < 15
#        puts "#{@orange_count} oranges this year. Not Bad!"
#      elsif @age < 50
#        @orange_count = rand(20..100)
#        puts "#{@orange_count} oranges!"
#      end
#    end
#  end
#  
#  def one_year_passes
#    @age += 1
#    if @age == 50
#      puts "You tree has died"
#      @alive = false
#    elsif @age > 50
#      puts "Your tree is dead"
#    else
#      if @height <= rand(12..18)
#        @height += 1.2.round
#      end
#    end
#    @orange_count = 0
#  end
#  
#  private 
#  
#  def orange_count
#    if @age < 15
#      @orange_count = rand(30..100)
#    elsif @age < 50
#      @orange_count = rand(70..200)
#    end
#  end
#end

