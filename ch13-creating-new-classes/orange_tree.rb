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
    @height = @height.round(1)
    @age <= 5 ? @oranges = 0.to_i : @oranges += (@height * 15 - 25).to_i
    
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
     #puts "A year on it is #{@age} #{year} old! It is #{@height}m tall and has #{@oranges} oranges!"
     #'This year your tree grew to 9.6m tall, and produced 119 oranges.'
     puts "This year your tree grew to #{@height}m tall, and produced #{@oranges} oranges."
    elsif @age == 25
     #puts "Oh no, sadly the tree is old and has died...  :( "
     puts "Oh, no! The tree is too old, and has died. :("
    else
     puts "A year later, the tree is still dead. :("
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
     #puts "Sadly the tree is dead so has been cut down."
     puts "A dead tree has nothing to pick. :("
  end
     
end

def count_the_oranges
   if @alive
   puts "There are currently #{@oranges} oranges on the tree."
   else
       #puts "Sadly the tree is dead so has been cut down."
       puts "A dead tree has no oranges. :("
   end
   @oranges  
end

def height
    if @alive
        puts "The tree is now #@height}m tall."
    else
        #puts "Sadly the tree is dead so has been cut down."
        puts "A dead tree is not very tall. :("
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

23.times do
 tree.one_year_passes
end

tree.count_the_oranges
tree.pick_an_orange