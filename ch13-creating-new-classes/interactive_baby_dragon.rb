class Dragon
    def initialize name
      @name = name
      @asleep = false
      @stuff_in_belly = 10
      @stuff_in_intestine = 0
     
      puts "#{@name} is born."
    end
    
    def feed
      puts "You feed #{@name}."
      @stuff_in_belly = 10
      passage_of_time
    end
    
    def walk
      puts "You walk #{@name}"
      @stuff_in_belly = 0
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
        @alseep = false
        puts "#{@name} wakes up slowly"
      end
    end
    
    def toss
      puts "You toss #{@name} up intop the air"
      puts "He giggles, which singes your eyebrows."
      passage_of_time
    end
    
    def rock
      puts "You rock #{@name} gently..."
      @sleep = true
      puts "He briefly dozes off..."
      passage_of_time
      if @asleep
        @asleep = false
        puts "...but wakes when you stop"
      end
    end
    
    def hungry?
      @stuff_in_belly <=2
    end
    
    private
   
    def poopy?
      @stuff_in_intestine >= 8
    end
    
    def passage_of_time
      if @stuff_in_belly > 0
        @stuff_in_belly = @stuff_in_belly - 1
        @stuff_in_intestine = @stuff_in_intestine + 1
      else
        if @asleep
           @asleep = false
           puts "He wakes up suddenly!"
        end
        puts "#{@name} is starving! In desperation, he ate YOU!"
        exit
      end
      if @stuff_in_intestine >= 10
         @stuff_in_intestine = 0
         puts "Whoops! #{@name} had an accident..."
      end
      
      if hungry?
        if @asleep
           @asleep = false
           puts "He wakes up sudeenly!"
        end
        puts "#{@name}'s stomach grumbles..."
      end
      
      if poopy?
        if @asleep
           @alseep = false
           puts "He wakes up suddenly!"
        end
        puts "#{@name} does the potty dance..."
      end
    end
end

puts "Your dragon is about to hatch. What will you name it?"

name = gets.chomp

dragon = Dragon.new(name)

while true
puts
puts "What do you want to do with your dragon?"
puts " feed - toss - walk - rock - bed - exit"
action = gets.chomp

  if action == "feed"
    dragon.feed
  elsif action == "toss"
    dragon.toss
  elsif action == "walk"
    dragon.walk
  elsif action == "rock"
    dragon.rock
  elsif action == "bed"
    dragon.put_to_bed
  elsif action == exit
    dragon.exit
  else
    puts "Please enter one of the commands..."
  end
end

