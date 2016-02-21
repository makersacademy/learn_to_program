class Dragon
  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10 # He's full
    @stuff_in_intestine = 0 # He doesn't need to go

    puts "Hello little #{@name}."
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
    puts "He giggles, which singes your eyebrows..."
    passage_of_time
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
    else
      if @asleep
        @asleep = false
        puts "He wakes up suddendly!"
      end
      puts "#{@name} is starving! In desperation, he ate YOU!"
      exit
    end

    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident"
    end

    if hungry?
      if @asleep
        @asleep = false
        puts "He wakes up suddendly!"
      end
      puts "#{@name}'s stomach grumbles'"
    end

    if poopy?
      if @asleep
        @asleep = false
        puts "He wakes up suddendly!"
      end
      puts "#{@name} does the potty dance..."
    end
  end
end

def game
  print "Oh a newly hatched dragon boy? What would you like to call him? "
  name = gets.chomp
  pet =  Dragon.new name
  puts ""
  while true
    print "What would you like to do with #{name}? "
    answer = gets.chomp.downcase
    case true
    when answer == "feed"
      pet.feed
      puts ""
    when answer == "walk"
      pet.walk
      puts ""
    when answer == "toss"
      pet.toss
      puts ""
    when answer == "put to bed" || answer == "put him to bed"
      pet.put_to_bed
      puts ""
    when answer == "rock"
      pet.rock
      puts ""
    when answer == "exit"
      exit
    else
      puts '¯\_(ツ)_/¯'
      puts "#{name} can't do that"
      puts " you can only: 'feed', 'walk', 'toss', 'rock' or 'put him to bed'"
      puts " or type 'exit' to stop the game"
      puts ""
    end
  end

end

game
