class OrangeTree
  
  attr_reader # :height, :count_the_oranges
 
  def initialize(age = 1, height = 5, fruit = 0)
    @age = age
    @height = height
    @fruit = fruit
  end
  
  def height
    "Your tree is #{(@height/2) + @age} m.s tall."
  end
 
 
  def one_year_passes  
    @fruit = 0  
   'Tragedy!  The tree is dead!' unless @age <= 100 
    if @age >= 20
      @fruit += 1
      @age += 1
    elsif @age >= 70
      @fruit -= 1
      @age += 1 
    else
      @age += 1
   end
 end
 
  def pick_an_orange
      @collected = @fruit
      @fruit -= 1
      'That was a delicious orange indeed.' 
  end
    
    
  def count_the_oranges
    "You have #{@fruit} oranges."
  end
end

tree = OrangeTree.new
 
p tree.height
p tree.count_the_oranges
 
34.times do
  tree.one_year_passes
end
 
tree.one_year_passes
p tree.height
p tree.count_the_oranges
p tree.pick_an_orange
p tree.count_the_oranges