class Dragon

  def initialize name
    #this means the initialize bit takes a parameter you pass in when you call it

    @name = name
    @asleep = false
    @stuff_in_belly = 10 # he's full
    @stuff_in_intestine = 0 # he doesn't need to go

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
    puts "He giggles, which singes your eyebrows."
    passage_of_time
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts "He briefly dozes off..."
    passage_of_time

    if @asleep
      @asleep = false
      puts "...buts wakes when you stop."
    end
  end

  private
  # private means that the methods defined here are methods internal to 
  # the object. (You can feed your dragon but you can't as him if he's hungry.)
  def hungry?
    # method names can end with "?"
    # usually we do this only if the method returns true or false, like this:
    @stuff_in_belly <=2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      # move food from belly to intestine
      @stuff_in_belly = @stuff_in_belly - 1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else # Our dragon is starving!
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end

      puts "#{@name} is starving! In desperation, he ate YOU!"
      exit # This quits the program.
    end

    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end

    if hungry?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name}'s stomach grumbles..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end

      puts "#{@name} does the potty dance..."
    end
  end

end

puts "What should we name the baby dragon?"
name = gets.chomp

pet = Dragon.new name
# this seems to automatically take the name variable just declared as the parameter

puts "Would you like to 'walk', 'feed', 'rock', 'toss' or 'put to bed' the baby dragon?"
puts "Keep going until you want to 'quit'."
while true
  user_input = gets.chomp.downcase



  if user_input == "feed"
    pet.feed
  elsif user_input == "walk"
    pet.walk
  elsif user_input == "rock"
    pet.rock
  elsif user_input == "toss"
    pet.toss
  elsif user_input == "put to bed"
    pet.put_to_bed
  elsif user_input == "quit"
    exit
  else
    puts "Please choose one of the options!"

  break if user_input == "quit"
  # not sure if this line is necessary, given the 'exit' option above.
  end
end
