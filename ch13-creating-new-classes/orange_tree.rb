class OrangeTree
    def initialize
        @height = 2
        @number_of_oranges = 0
        @alive = true
    end
  
    def height
        if @alive
            "The tree is #{@height.round(1)} metres tall!"
        else
            "The tree is dead :("
        end
    end
  
    def count_the_oranges
        if @alive
            "There are #{@number_of_oranges} oranges on the tree!"
        else
            "A dead tree grows no oranges :("
        end
    end
  
    def one_year_passes
        if @alive
            @height += 0.5
            @number_of_oranges = 0
            if @height > 15 && rand(2) == 1
                @alive = false
                "The tree has died of old age :("
            else
                if @height < 4
                    @number_of_oranges = 0
                    "This year your tree grew to #{@height.round(1)}m tall," +
                    " but is still too young to bear fruit."
                elsif @height < 7
                    @number_of_oranges = 20 + rand(10)
                    "This year your tree grew to #{@height.round(1)}m tall," +
                    " and produced #{@number_of_oranges} oranges."
                elsif @height >= 7
                    @number_of_oranges = 50 + rand(20)
                    "This year your tree grew to #{@height.round(1)}m tall," +
                    " and produced #{@number_of_oranges} oranges."
                end
            end
        end
    end
        
    def pick_an_orange
        if @alive
            if @number_of_oranges > 0
                @number_of_oranges -= 1
                "You pick and eat an orange. It is delicious!"
            else
                "There are no more oranges :("
            end
        else
            "A dead tree grows no oranges :("
        end
    end
end