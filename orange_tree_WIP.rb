class OrangeTree
  
  def initialize tree
    @tree = tree
    @height = 6
    @age = 0
    @oranges = 0
    puts "#{tree} has been planted!"
  end

   def add_year
    puts "The tree has grown from #{@height} inches to #{@height + 6} inches!"
    puts "The tree is now #{@age + 1} years old!"
    @height = @height + 6
    @age = @age + 1
    @oranges = @oranges + 2
    if @age >= 4
      @oranges = @oranges + 4
    elsif @age >= 8
      @oranges = @oranges + 6
    end
    end

   def age
    @age
    "The tree is #{@age} years old!"
    if @age == 15
      tree_dies
    end
   end

   def height
    @height
    "The tree is #{@height} inches tall!"
   end

   def oranges
    @oranges 
    if @age < 4
      puts "the tree has no oranges!"
    else
    puts "the tree has #{@oranges} oranges"
    end
   end

   def pick_an_orange

    if @age > 3
    @oranges -= 1
    puts "I've just picked a juicy orange."
 else
    puts "The tree has no oranges to pick!"
   end
   oranges
 end

private

  def tree_dies
      puts "the tree has died there are no more oranges!"
      exit
  end

end


puts
puts
tree = OrangeTree.new 'Tree_1'
tree.add_year
tree.height
tree.oranges
tree.pick_an_orange



