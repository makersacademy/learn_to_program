class Dragon
def initialize name
  @name = name
  @asleep = false
  @stuff_in_belly  = 10
  @stuff_in_intestine = 0

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
    #  Move food from belly to intestine.
    @stuff_in_belly     = @stuff_in_belly     - 1
    @stuff_in_intestine = @stuff_in_intestine + 1
  else # Our dragon is starving!
    if @asleep
      @asleep = false
      puts 'He wakes up suddenly!'
    end
    puts "#{@name} is starving!  In desperation, he ate YOU!"
    exit # This quits the program.
  end
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



puts 'What would you like to name your baby dragon?'
name = gets.chomp
pet = Dragon.new name

while true
  puts
  puts "What would you like to do with #{name} feed it, play with it, walk it, rock it, put it to bed, or exit the program"
  command = gets.chomp.downcase

  if command == "exit" || command == "exit the program"
    exit
  elsif command == "feed" || command == "feed it" || command == "feed him" || command == "feed her"
    pet.feed
  elsif command == "play" || command == "play with it" || command == "play with him" || command == "play with her"
    pet.toss
  elsif command == "walk" || command == "walk it" || command == "walk him" || command == "walk her"

  elsif command == "rock" || command == "rock it" || command == "rock him" || command == "rock her"
    pet.rock
  elsif command == "put to bed" || command == "put it to bed" || command == "put him to bed" || command == "put her to bed"
    pet.put_to_bed
  else
    puts "Be careful what you want to do with your baby dragon! He likes to eat bad spellers!"
  end
end
end
