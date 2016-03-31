class OrangeTree
    
    def initialize
        @height = 0
        @age = 0
        @oranges = 0
        @living = true
    end
    
    def height
        puts "The tree is #{@height} feet tall"
    end
    
    def one_year_passes
        @age += 1
        if @height <15
            @height += rand(1.0..2.0).round(2)
        else
            @height
        end
        
        if @age == 4
            @oranges = 5
        elsif @age > 4
            @oranges = rand(5..7) + @age
        else
            @oranges
        end
        
        if @age == rand(14..17)
            @living = false
        end
        
        if @living == false
            puts "Your orange tree lived long and provided you with many oranges, but now it's dead..."
            exit
        end
        
    end
    
    def count_the_oranges
        puts "There are #{@oranges} oranges on the tree"
    end
    
    def pick_an_orange
        @oranges -= 1 unless @oranges == 0
        
        if @oranges == 0
            "There arn't any oranges on the tree..."
        else
        puts "WOW! This looks like a tasty orange.... YUP! AMAZING!"
        end
    end
    
    
    
end


