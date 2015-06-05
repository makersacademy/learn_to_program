class OrangeTree
    def initialize
        @height = 0
        @orange_count = 0
        @alive = true
    end
    def	height
        if @alive
            @height
            else
            'The orange tree is dead and not growing'
        end
    end
    def countTheOrange
        if @alive
            @orange_count
            else
            'There is no orange on the tree'
        end
    end
    def oneYearsTime
        if @alive
            @height += 1
            @orange_count = 0
            if @height > 10 && rand(2) > 0
                @alive = false
                elsif @height > 2
                @orange_count = (@height * 15 - 25).to_i
                "The orange tree is #{@height} m tall and "+
                "produced #{@orange_count} oranges."
                else
                "The orange tree is #(@height) m tall and "+
                " it's still growing, so no oranage yet"
            end
            else
            "The tree has died in this year"
        end
    end
    def pickAnOrange
        if @alive
            if @orange_count > 0
                @orange_count -= 1
                "You picked an orange."
                else
                "You didn't find any orange"
            end
            else
            "There is no orange on a dead tree"
        end
    end
end

myOrangeTree = OrangeTree.new
10.times do
    myOrangeTree.oneYearsTime
end

puts myOrangeTree.oneYearsTime
puts myOrangeTree.countTheOrange
puts myOrangeTree.height
puts myOrangeTree.oneYearsTime
puts myOrangeTree.pickAnOrange
puts myOrangeTree.oneYearsTime
puts myOrangeTree.pickAnOrange
puts myOrangeTree.countTheOrange

