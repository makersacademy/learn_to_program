class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10      # he's full.
    @stuff_in_intestine = 0   # he doesn't need to go.

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
    puts "You rock #{@name} gently."
    @asleep = true
    puts "He briefly dozez off..."
    passage_of_time
    if @asleep
      @asleep = false
      puts "...but wakes when you stop."
    end
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts "He briefly dozes off..."
    passage_of_time
    if @asleep
      @asleep = false
      puts "...but wakes when you stop."
    end
  end

  private
  # "private" means that the methods defined here are
  # methods internal to the object. (you can feed your
  # dragon, but you can't ask him whether he's hungry.)

  def hungry?
    # method names can end with "?"
    # usually we do this only if the method
    # returns true or false, like this:
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
    # move food from belly on intestine.
    @stuff_in_belly = @stuff_in_belly - 1
    @stuff_in_intestine = @stuff_in_intestine + 1
    else  # our dragon is starving!
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name} is sarving! In desperation, he ate YOU!"
      exit  # this quits the program.
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

puts "What would you like to name your baby dragon?"
name = gets.chomp
pet = Dragon.new name
obj = Object.new   # just a blank, dummy object

while true
  puts
  puts "command: feed, toss, walk, rock, put to bed, exit"
  command = gets.chomp

  if command == "exit"
    exit
  elsif pet.respond_to?(command) && !obj.respond_to?(command)
    # I only want to accept methods that dragons have,
    # but that regular objects *don't* have.
    pet.send command
  else
    puts "Huh? Please type one of the commands."
  end
end