
class OrangeTree 

  def initialize
    @height       = 0
    @orange_count = 0
    @alive = true
  end
def height 
  if @alive 
    @height.round(2)
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
    @orange_count = 0
      if @height > 10 && rand(2) > 0
      # tree dies
      @alive = false
      'Oh, no! The tree is too old, and has died. :('
    elsif @height > 2
      # new oranges grow
      @orange_count = (@height * 15 - 25).to_i
      "This year your tree grew to #{@height.round(2)}m tall," + " and produced #{@orange_count} oranges."
    else
      "This year your tree grew to #{@height}m tall," +
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
=begin
class OrangeTree
  
  def initialize
    puts "Great you have planted an organe tree!"
  @age = 0
  @orange_count = 0
  end


  def height
    if @age == 0
      puts "You just planted your tree it has not grown yet!"
    else
      puts "Your tree is #{@age*20} cm high!"
    end
  end

  def one_year_passes(years=1)
  @age+= years
  
    if @age ==5 
      fruit_growth
      puts "Wow your tree is growing oranges!"
    end

  fruit_growth if @age > 5

  puts "You tree is very old it will die soon, maybe plant a new one!" if @age == 10
  puts "Your tree has died this year, it was #{@age} years old." if @age== 15
    
  puts "Your tree as grown, it is now #{@age} #{@age > 1 ? 'years' : 'year'} old."
  end

  def count_the_oranges
  puts "There are currently #{@orange_count} oranges on the tree."
  end
  def pick_an_orange
    if @orange_count == 0
       puts "There aren't any organes left, you need to wait until next year."
    elsif @orange_count == 1
      @orange_count-=1
      puts "The oranges tastes amazing but this is the last one for this year"
    else
      @orange_count-=1
      puts "The oranges tastes amazing"
    end
  end

  private

  def fruit_growth
      @orange_count = @age * 3
  end

end

tree1 =OrangeTree.new
tree1.one_year_passes
tree1.height
tree1.one_year_passes(5)
tree1.count_the_oranges
tree1.pick_an_orange
tree1.count_the_oranges


=end