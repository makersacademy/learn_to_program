class Dragon

    def initialize(name)
        @name = name
        @asleep = false
        @stuff_in_belly = 10            # hes full
        @stuff_in_intestine = 0         # he doesnt need a dump
        
        puts "#{@name} has been born!"
    end
    
    def feed
        puts "You feed #{@name}."
        @stuff_in_belly = 10
        time_passes
    end

    def walk
        puts "You take #{@name} out for a walk."
        @stuff_in_intestine = 0
        time_passes
    end
    
    def put_to_bed
        puts "You put #{@name} to bed..... zzzzzzzz"
        @asleep = true
        3.times do
            if @asleep 
                time_passes
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
        puts "You toss #{@name} into the air."
        puts "He giggles, singing your eyebrows...."
        time_passes
    end
    
    def rock
        puts "You rock #{@name} gently."
        @asleep = true
        puts "He briefly dozes off..."
        time_passes
        if @asleep
            @asleep = false
            puts "...but wakes when you stop"
        end
    end
    
    private
    #'private' means that any method defined in here are internal methods to the
    # object. For example with the method defined below, we cannot call hungry?
    # on the dragon, but methods defined within the scope of this class can call them.
    
    def hungry?
        @stuff_in_belly <= 2
    end
    
    def poopy?
        @stuff_in_intestine >= 8
    end
    
    def time_passes
        
        if @stuff_in_belly > 0 
            
            #move food from belly to intestine
            
            @stuff_in_belly -= 1
            @stuff_in_intestine += 1
        else
            # dragon is starving
            
            if @asleep
                @asleep = false
                puts "#{@name} suddenly wakes up!"
            end
            
            puts "#{@name} is starving! In desperation he ate you!"
            exit
        end
            
        if @stuff_in_intestine >= 10
            @stuff_in_intestine = 0
            puts "Whoops! #{@name} had an accident..."
        end
        
        if hungry?
            if @asleep
                @asleep = false
                puts " #{@name} suddenly woke up!"
            end
            puts "#{@name}'s stomack grumbles..."
        end
        
        if poopy?
            if @asleep
                @asleep = false
                puts "He wakes up suddenly!"
            end
            puts "#{@name} starts doing the potty dance..."
        end
    end
end

puts "You go to the pet store to buy a dragon egg. That one looks nice....\nWhat do you call him?"
name = gets.chomp
dragon = Dragon.new(name)

    
puts "You need to take care of your dragon, to do so just input one of the following commands:
to feed your dragon up: 'feed'
to take your dragon for a walk: 'walk'
to take him to bed: 'bedtime'
to toss in the air: 'toss'
to comfort: 'rock'
to leave your dragon behind: 'exit'"

input = gets.chomp

while true
   input = gets.chomp

  if input == 'exit'
    exit
  elsif input == 'feed'
    dragon.feed
  elsif input == 'toss'
    dragon.toss
  elsif input == 'walk'
    dragon.walk
  elsif input == 'rock'
    dragon.rock
  elsif input == 'bedtime'
    dragon.put_to_bed
  else
    puts 'Huh? Please type one of the commands.'
  end
end
