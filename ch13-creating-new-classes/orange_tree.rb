class OrangeTree
    attr_accessor :height, :age, :oranges, :dead
    def initialize
        @height = 0
        @age = 0
        @oranges = 0
        @dead = false
    end
    
    def height
        unless @dead
            @height.round(1)
        else
            return "A dead tree is not very tall. :("
        end
    end
    
    def count_the_oranges
        unless @dead
            @oranges.truncate
        else
            return "A dead tree has no oranges. :("
        end
    end
    
    def pick_an_orange
        unless @dead
            @oranges -= 1
            unless @oranges < 0
                return "Hmmm... the orange was delish"
            else
                return "There are no more oranges to pick"
            end
        else
            return "A dead tree has nothing to pick. :("
        end
    end
    
    def one_year_passes
        unless @dead
            @age += 1
            @height += 0.4
            
            if @age > 5
                @oranges = (@height * 15 - 25)
            end
            
            if @age > 25
                @dead = true
                return "Oh, no! The tree is too old, and has died. :("
            else
                return "This year your tree grew to #{@height.round(1)}m tall, and produced #{@oranges.truncate} oranges."
            end
        else
            return "A year later, the tree is still dead. :("
        end
    end
end