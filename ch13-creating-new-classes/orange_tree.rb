# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.



class OrangeTree
    
    def initialize tree
        @tree = tree
        @fruits = 0
        @treeAge = 1
        @treeHeight = 5
        
        puts "#{@tree} is born"
    end
    def age
        puts "Your tree is #{@treeAge} years old. "
    end
    
    def height
        puts 'A dead tree is not very tall. :('
        
    end
    
    def one_year_passes
        while @treeAge != 25
            @treeHeight = (@treeHeight + 0.4).round(1)
            @treeAge = @treeAge + 1
            if @treeAge <= 5
                @fruits = @fruits
                elsif @treeAge > 5
                @fruits = (@treeHeight * 15 - 25).to_i
                puts "This year your tree grew to #{@treeHeight}m tall, and produced #{@fruits} oranges. "
                elsif @treeAge == 25
                @fruits = @fruits
                puts "Oh, no! The tree is too old, and has died. :( "
                else @treeAge > 25
                puts "'A year later, the tree is still dead. :('"
            end
        end
    end
    def count_the_oranges
        if @treeAge < 25
            puts "Your tree has #{@fruits} oranges. "
            else
            puts 'A dead tree has no oranges. :('
        end
    end
    def pick_the_oranges
        if @fruits == 0
            puts "Sorry, you cannot pick a fruit now. Come back next year. "
            else
            @fruits = @fruits - 1
        end
        puts "You have picked one fruit. You have still #{@fruits} left. "
        if @treeAge == 25
            puts 'A dead tree has no oranges. :('
        end
        
    end
    
end


tree = OrangeTree.new "Dab"

tree.one_year_passes
tree.age
tree.one_year_passes
tree.one_year_passes
tree.count_the_oranges
tree.pick_the_oranges
tree.one_year_passes
tree.one_year_passes