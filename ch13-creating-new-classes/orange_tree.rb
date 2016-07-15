# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
  # your code here
    def initialize tree
        @tree = tree
        @age = 0
        @height = 0
        @orange_count = 0

        puts "#{@tree}'s journey into a fully-fledged orange tree has begun!"
    end

    def one_year_passes
        if @age < 25
            @age = @age + 1
            grow
            produce_oranges
            puts "#{@tree} turned #{@age} years old and grew to #{@height}m tall."
        elsif @age == 25
        puts "#{@tree} has reached the ripe old age of 25, the time for all orange trees to go back into the ground. #{@tree} lived a prosporous live which we can all be proud of, producing #{@orange_count} oranges and growing to height of #{@height}m. Farewell #{@tree}." 
        exit
        end
     end
    
def grow
   if @age == 1
      @height = 0.4
   else
      @height = (@height + 0.4).round(2)
   end
end

def produce_oranges
   if @age > 6 
      @orange_count = (@height * 15).to_i - 25
      puts "#{@tree} has produced #{@orange_count} succulent oranges this year! Way to go #{@tree}!"
   end
end

tree = OrangeTree.new "Orangina"
35.times {tree.one_year_passes}
end
