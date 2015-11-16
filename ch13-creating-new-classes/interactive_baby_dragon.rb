class Dragon
    def initialize name
        @name = name
        @asleep = false
        @hungry = 10
        @toilet = 0
        @alive = true
    end
    
    def feed
        puts "You feed #{@name}."
        @hungry = 10
        passage_of_time
    end

    def walk
        puts "You walk #{@name} around the garden."
        @toilet = 0
        passage_of_time
    end

    def put_to_bed
        puts "You put #{@name} to sleep"
        puts
        @asleep = true
        3.times do
            if @asleep
                passage_of_time
            end
            if @asleep
                puts "#{@name} is snoring softly"
                puts
            end
        end
        if @asleep
            @asleep = true
            puts "#{@name} wakes up gently and slightly confused"
            passage_of_time
        end
    end
    
    def toss
        puts "You toss #{@name} high into the air!"
        puts
        puts "#{@name} spits out a burst of flame in the process burning your hair"
        passage_of_time
    end
    
    def rock
        puts "You rock #{@name} gently"
        puts
        @asleep = true
        puts "His eyelids droop as he begins to fall asleep"
        puts
        passage_of_time
        if @asleep
            @asleep = false
            puts "But he wakes up as you stop"
        end
    end

    def play
      puts "You throw the ball for #{@name} to fetch!"
      puts
      puts "The ball disintigrates as #{@name} lights it on fire..."
      puts
      puts "#{@name} looks at you expectantly!"
      passage_of_time
    end

    
private

    def hungry?
        @hungry <= 2
    end
    
    def poopy?
        @toilet >= 8
    end
    
    def passage_of_time
        if @hungry > 0
            @hungry -= 1
            @toilet += 1
        else
            if @asleep
                puts "#{@name} suddenly woke up, he doesn't look happy"
                puts
            end
        puts "#{@name} is ravenous with hunger. You are eaten... it is a dragon afterall."
        exit
        end
    
    if @toilet >= 10
      @toilet = 0
      puts
      puts "Whoops! #{@name} had an accident...."
      puts
    end

    if hungry?
        if @asleep 
            @asleep = false
        puts
        puts "#{@name} wakes up suddenly!"
        puts
        end
        puts
        puts "#{@name}'s stomach is rumbling..."
    end
    
    if poopy?
        if @asleep
            @asleep = false
            puts
            puts "#{@name} wakes up suddenly"
            puts
        end
        puts
        puts "#{@name} really needs to go outside!"
    end
    
    end
    
end

puts "You've just discovered a baby dragon all alone in the wilderness,"
puts "Do you want to take it back with you and take care of it?"
answer = gets.chomp
if answer.downcase.include? "y"
    kind = true
else
    kind = false
    puts "Your day carries on as usual...until you fall of a cliff while bird watching."
    exit
end

puts "Congratulations! What do you want to call your baby dragon?"
name = gets.chomp

baby = Dragon.new name
puts
puts "You can now 'feed', 'walk', 'rock', 'toss', 'play' or put #{name} to bed."

while kind
    puts
    puts "What now?"
    puts
    task = gets.chomp.downcase
    puts
    if task == 'feed'
        baby.feed
    elsif task == 'walk'
        baby.walk
    elsif task == 'rock'
        baby.rock
    elsif task == 'toss'
        baby.toss
    elsif task.include? 'bed'
        baby.put_to_bed
    elsif task == 'play'
        baby.play
    else
      puts "You watch over #{name} lovingly."
    end
end
        
    
    
