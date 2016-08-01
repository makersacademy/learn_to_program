# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.

class OrangeTree
    def initialize
        @height = 0
        @age = 0
        @orange_count = 0
    end
    
    def height
        if @age >= 25
            return "A dead tree is not very tall. :("
        end    
        return @height
    end
     
    def one_year_passes
        @age = @age + 1
        @height = @height + 0.4
        
        if @age == 25
           return "Oh, no! The tree is too old, and has died. :(" 
        end  
        
        if @age > 25
            return "A year later, the tree is still dead. :("
        end
        
        if @age > 5
            @orange_count = 0
            @orange_count = @height * 15 - 25
        end    
        return "This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
    end
    
    def count_the_oranges
        if @age >= 25
           return "A dead tree has no oranges. :(" 
        end    
        return @orange_count
    end

    def pick_an_orange
        if @age > 5
            @orange_count = @orange_count - 1
        end    
        
        if @orange_count < 0
            return "There are no more oranges to pick this year."
        end
        
        if @age >= 25
            return 'A dead tree has nothing to pick. :('
        end
        return "What a delicious orange!"
    end
    
    def get_age
       return @age 
    end
end

=begin
my_tree = OrangeTree.new
puts my_tree.count_the_oranges
puts my_tree.get_age
10.times do puts my_tree.one_year_passes end
puts my_tree.height
puts my_tree.get_age
puts my_tree.pick_an_orange
puts my_tree.count_the_oranges
puts
15.times do puts my_tree.one_year_passes end
puts my_tree.height
puts my_tree.get_age
puts my_tree.pick_an_orange
puts my_tree.count_the_oranges
=end