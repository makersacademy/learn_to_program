class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10 #max
    @stuff_in_intestine = 0 #min

    #puts "#{@name} was initialized!"

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine  = 0
    passage_of_time
  end

  def put_to_bed
    puts "You made #{@name} got to bed, not happy!"
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end

      if @asleep
        puts "#{@name} snores, filling the room with smoke and fire!"
      end
    end
      if @asleep 
        @asleep = false
        puts "#{@name} wakes up in a right huffy mood!"
      end
    end

    def toss
      puts "You chucked #{@name} up into the air."
      puts 'He coughs and burns your hair off!'
      passage_of_time
    end

    def rock
      puts "You rock #{@name} gently."
      @asleep = true
      puts 'He briefly dozes off....... or does he?'
      passage_of_time
      if @asleep
        @asleep = false
        puts '......he wakes up when you stop and it likely to set your room on fire, now what?'
      end
    end

    private
    #below are methods intenal to the object, can feed dragon but not ask if hungry!

    def hungry?
    #method names ok to end in? generally used ? if the method will return true or false
    @stuff_in_belly <=2
    end

    def poopy?
    @stuff_in_intestine >= 8
    end

    def passage_of_time
      if @stuff_in_belly > 0
      #move food from belly to intestine
      @stuff_in_belly = @stuff_in_belly -1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else #Dragon is hungry
    if @asleep 
       @asleep = false
       puts "He wakes up suddenly!"
       puts "#{@name} is starving! In desperation he EATS YOU!"
       exit # Will quit out of program
     end

     if @stuff_in_intestine >=10
        @stuff_in_intestine = 0
        puts "Whoops! #{@name} had a massive accident on the floor!"
      end

      if hungry?
        if @asleep
           @asleep = false
           puts "He wakes up suddenly!"
        end
        puts "#{@name}'s stomach is grumbling..."
      end

      if poopy?
        if @asleep
          @asleep = false
          puts 'He wakes up suddenly!'
        end
        puts "#{@anme} does a potty dance....is it too late?"
      end
    end
  end

  puts "What is your dragon's name?"
  name = gets
  
  dragon = Dragon.new name

  while true
  puts 'commands: feed, toss, walk, rock, put to bed, exit'
  command = gets.chomp.downcase

  if command == 'exit'
    exit
  elsif command == 'feed'
    pet.feed
  elsif command == 'toss'
    pet.toss
  elsif command == 'walk'
    pet.walk
  elsif command == 'rock'
    pet.rock
  elsif command == 'put to bed'
    pet.put_to_bed
  else
    puts 'Not valid- Please type one of the commands.'
  end
end
end
end

