# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  def initialize name
    @name = name  
    @growth = 0
    @oranges = false
    @orange_count = 0
    @age = 0
    @alive = true
  end
  
  def height
      @height
  end
  
  def pick_an_orange(picked = 1)
      if @alive && @oranges
          print "You picked #{picked} juicy orange"
          puts "." if picked == 1
          puts "s." if picked > 1
          if @orange_count - picked < 0
              puts "Sorry, not enough oranges on the tree to pick #{picked}."
          else 
              @orange_count -= picked
              puts "There is 1 orange left on the tree." if @orange_count == 1
              puts "There are #{@orange_count} oranges left on the tree." if @orange_count > 1
          end
      elsif @alive && !@oranges
          puts "Sorry, the tree is too young to produce oranges so you can't pick any."  
      else
          puts "Sorry, a dead tree produces no oranges so you can't pick any."
      end
  end
  
  
  def one_year_passes
      @growth += 0.4
      @age += 1
      @orange_count = ((@growth * 15) - 25).round             #Resets each year.
      @oranges = true if @age > 5 && @alive == true
      if @age <= 25
          
          puts "Your orange tree '#{@name}' is now #{@age} years old." 
          puts "It is #{@growth.round(2)}m high."
          
          puts "Your orange tree '#{@name}' is now old enough to produce oranges." if @age == 6
          puts "Your tree has produced #{((@growth * 15) - 25).round} oranges this year!" if @age >= 6
      elsif @age > 25
          puts "Your orange tree '#{@name}' has died."
          @alive = false
          @oranges = false
      end
  end
end

ot = OrangeTree.new "JuicyLucy"

ot.one_year_passes
ot.pick_an_orange
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.pick_an_orange 7
ot.pick_an_orange 2
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.pick_an_orange(5)
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.pick_an_orange (9)
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.one_year_passes
ot.pick_an_orange 21
ot.one_year_passes
