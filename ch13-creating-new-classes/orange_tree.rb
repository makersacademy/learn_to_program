class OrangeTree
  # your code here
    attr_reader :branches

    def initialize

        @age = 0

        @height = 0

        @branches = 0

        @orangeCount = 0

        @living = true

    end

    def height
    	if @living
    		@height.round(2)
    	else
    		"A dead tree is not very tall. :("
    	end
    end

    def one_year_passes
      if @orangeCount > 0
        puts "The over-ripe oranges fall from the branches to bruise as they hit the ground with a splat, before rotting away into the soil."
        @orangeCount = 0
      end
			@age += 1
      @living = false if @age == 26

      if !@living
      	
        if @age == 26
        	"Oh, no! The tree is too old, and has died. :("
        elsif @age > 26
        	"A year later, the tree is still dead. :("
      	end
			else
				
        @height += 0.4
        @branches += @height - @age / 2 if @age > 8
        @orangeCount = (@height * 15 - 25).round if @height > 2
        "This year your tree grew to #{height}m tall, and produced #{@orangeCount} oranges."
			end			
    end

    def count_the_oranges

    	if @living 

    		@orangeCount

    	else

    		"A dead tree has no oranges. :("

    	end

    end

    def pick_an_orange

        if @living

        	@orangeCount -= 1

        	puts @orangeCount > 0 ? "You peel the orange and tear off a segment, squishing its juicy, succulent flesh between your teeth.  Before you know it you've eaten the whole, delicious orange." : "There aren't any more oranges this year, you've already eaten them all, greedy guts."

        else

        	"A dead tree has nothing to pick. :("

        end

    end

end
=begin
tree = OrangeTree.new

for x in 1..150

    tree.oneYearPasses

end

tree.branches

tree.countTheOranges

tree.pickAnOrange

tree.countTheOranges

tree.oneYearPasses

tree.countTheOranges

for x in 1..tree.countTheOranges + 1 

  tree.pickAnOrange

end

tree.countTheOranges

tree.oneYearPasses

for x in 1..148

    tree.oneYearPasses

end
=end