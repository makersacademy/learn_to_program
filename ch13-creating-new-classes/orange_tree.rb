# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
def initialize #name
    #@name = name
    @alive = true
    @height = 0 # Just a tiny seedling popping up.
    @oranges =  0 # No oranges on it yet.
    @age = 0
  
    puts "A new orange tree seedling has started to grow!"
end

def one_year_passes
    @oranges = 0
    @age += 1.to_i
    @height += 0.4
    @age < 5 ? @oranges = 0.to_i : @oranges += (@height * 15 - 25).to_i
    
    if @age == 25 
        @alive = false
    end
    
    if @age == 1
        year = "year"
    else
        year = "years"
    end
    
    puts
    if @alive
     puts "A year on it is #{@age} #{year} old! It is #{@height}m tall and has #{@oranges} oranges!"
    else
     puts "Oh no, sadly the tree is old and has died...  :( "
    end
   
end

def pick_an_orange
  if @alive
    unless @oranges == 0
        @oranges -= 1
        if @oranges == 0
            puts "No more oranges left to eat now!"
        elsif @oranges == 1 
            puts "That orange was delicious! Now there is only #{@oranges} left..."
        else
            puts "That orange was delicious! Now there are #{@oranges} left..."
        end
    end
  else
     puts "Sadly the tree is dead so has been cut down."
  end
     
end

def count_the_oranges
   if @alive
   puts "There are currently #{@oranges} oranges on the tree."
   else
       puts "Sadly the tree is dead so has been cut down."
   end
   @oranges  
end

def height
    if @alive
        puts "The tree is now #@height}m tall."
    else
        puts "Sadly the tree is dead so has been cut down."
    end
end

end #end of class

tree = OrangeTree.new 

#27.times do
# tree.one_year_passes
#end

6.times do
    tree.one_year_passes
end

tree.count_the_oranges

11.times do
   tree.pick_an_orange
end

20.times do
 tree.one_year_passes
end

tree.count_the_oranges
tree.pick_an_orange