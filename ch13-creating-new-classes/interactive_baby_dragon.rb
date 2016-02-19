class Dragon 
    def initialize name
        @name = name 
        @asleep = false 
        @stuff_in_belly = 10 # He's full. 
        @stuff_in_intestine = 0 # He doesn't need to go. 
        puts "#{@name} is born." 
    end 
    
    def feed 
        puts "You feed #{@name}." 
        @stuff_in_belly = 10 
        passage_of_time 
    end 
    
    def walk 
        puts "You walk #{@name}." 
        @stuff_in_intestine = 0 
        passage_of_time 
    end 
    
    def put_to_bed 
        puts "You put #{@name} to bed." 
        @asleep = true 
        3.times do 
            if @asleep 
                passage_of_time 
            end 
            if @asleep 
                puts "#{@name} snores, filling the room with smoke."
            end 
        end 
        if @asleep 
            @asleep = false 
            puts "#{@name} wakes up slowly." 
        end 
    end
    
    def toss 
        puts "You toss #{@name} up into the air." 
        puts 'He giggles, which singes your eyebrows.' 
        passage_of_time 
    end 
    
    def rock 
        puts "You rock #{@name} gently." 
        @asleep = true 
        puts 'He briefly dozes off...' 
        passage_of_time 
        if @asleep
            @asleep = false 
            puts '...but wakes when you stop.' 
        end 
    end
    
    private
    
    def hungry?
        @stuff_in_belly <= 2 
    end 
    
    def poopy? 
        @stuff_in_intestine >= 8 
    end 
    
    def passage_of_time 
        if @stuff_in_belly > 0
            @stuff_in_belly = @stuff_in_belly - 1 
            @stuff_in_intestine = @stuff_in_intestine + 1
        else # Our dragon is starving! 
            if @asleep 
                @asleep = false 
                puts 'He wakes up suddenly!' 
            end
            puts "#{@name} is starving! In desperation, he ate YOU!" 
        exit
        end 
         # This quits the program. end
        
        if @stuff_in_intestine >= 10 
            @stuff_in_intestine = 0 
            puts "Whoops! #{@name} had an accident..." 
        end
        if hungry? 
            if @asleep 
                @asleep = false 
                puts 'He wakes up suddenly!' 
            end 
            puts "#{@name}'s stomach grumbles..." 
        end 
        if poopy? 
            if @asleep 
                @asleep = false 
                puts 'He wakes up suddenly!' 
            end 
            puts "#{@name} does the potty dance..." 
        end 
    end 
end 

#pet = Dragon.new 'Norbert' 
#pet.feed 
#pet.toss 
#pet.walk
#pet.put_to_bed 
#pet.rock 

puts "Your options are:\n 1. New Dragon \n 2. Exit"
line = gets.chomp.downcase
if line == '1'
    puts 'What shall be its name?'
    name = gets.chomp.capitalize
    pet = Dragon.new(name)
else
    exit
end


while true
    puts
    puts "Your options are:\nFeed\nToss\nWalk\nPut to Bed\nRock\nExit"
    puts
    line1 = gets.chomp.downcase
    case line1
        when 'feed'
            pet.feed
        when 'toss'
            pet.toss
        when 'walk'
            pet.walk
        when 'put to bed'
            pet.put_to_bed
        when 'rock'
            pet.rock
        when 'exit'
            exit
        end
    
    end
    



    
