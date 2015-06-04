class Dragon
  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10 # he's full
    @stuff_in_intestine = 0 # he's doesn't need to go
  end

  def feed
    puts "You feed #{@name}"
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}"
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed"
    passage_of_time
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores filleing up room w smoke"
      end
      if @asleep
        @asleep = false
        puts "#{@name} wakes up slowly"
      end
    end
  end

  def toss
    puts "You toss #{@name} up into the air"
    puts "He giggles and singes your eyebrows"
    passage_of_time
  end

  def rock
    puts "You rock #{@name} gently"
    @asleep = true
    puts "He briefly dozes off..."
    passage_of_time
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  private
  # 'private' means that the methods defined here are methods internal to the object. (You can feeed your hungry dragon but you can't ask him whether he's hungry)

  def hungry?
    # method names can end with '?', but usually we only do this if the method returns true or false
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      # move food from belly to intestine
      @stuff_in_belly -= 1
      @stuff_in_intestine += 1
    else # our dragon is hungry
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} is starving, he ate you!"
      exit # this quits the program
    end

    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops #{@name} had an accident"
    end

    if hungry?
      if @asleep
        @asleep = false
        puts "he wakes up suddenly!"
      end
      puts "#{@name}'s stomach grumbles..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts "he wakes up suddenly!"
      end
      puts "#{@name} does the potty dance..."
    end

  end

end

puts 'Give your dragon a name:'
name = gets.chomp
pet = Dragon.new name

while true
  puts "Enter some commands for your dragon, selecting from the following options: feed, toss, walk, rock, put to bed, exit"
  command = gets.chomp

  if command == 'feed'
    pet.feed
  elsif command == 'toss'
    pet.toss
  elsif command == 'walk'
    pet.walk
  elsif command == 'rock'
    pet.rock
  elsif command == 'put to bed'
    pet.put_to_bed
  elsif command == 'exit'
    exit
  else
    puts "Please select one of the commands listed"
  end

end
