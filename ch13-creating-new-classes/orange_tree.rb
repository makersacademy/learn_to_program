class OrangeTree


  def initialize name, height
    @name = name
    @height = height
    @oranges = 0
    @age = 0
    puts "#{@name} is #{@height}cm tall"
  end
  
  def oneYearPasses 
    @age +=1
    @height +=10
    if (@age > 3)
      @oranges = 3 * @age
    end
    puts "One year passes"
    if @age > 7
      puts "Tree is dead, sorry"
      exit
    end
  end
  
  def height
    puts "#{@name} is #{@height}cm tall"
  end
  
  def countTheOranges 
    puts"There are #{@oranges} oranges on the tree"
  end
  
  def pickAnOrange
    @oranges -= 1
    puts "Yumm that was a great orange. There are #{@oranges} left on #{@name}"
  end
  
end

my_tree = OrangeTree.new "Bob", 10
my_tree.oneYearPasses
my_tree.oneYearPasses
my_tree.height
my_tree.oneYearPasses
my_tree.height
my_tree.oneYearPasses
my_tree.oneYearPasses
my_tree.countTheOranges 
my_tree.pickAnOrange 
my_tree.oneYearPasses
my_tree.countTheOranges 
my_tree.pickAnOrange 
my_tree.oneYearPasses
my_tree.countTheOranges 
my_tree.pickAnOrange 
my_tree.oneYearPasses
my_tree.countTheOranges 
my_tree.pickAnOrange 
my_tree.oneYearPasses
my_tree.countTheOranges 
my_tree.pickAnOrange 
my_tree.oneYearPasses
my_tree.countTheOranges 
my_tree.pickAnOrange 

