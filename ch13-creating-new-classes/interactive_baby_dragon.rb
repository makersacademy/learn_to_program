class Dragon

  def initialize
    puts "What would you like to call your dragon?"
    @name = gets.chomp
    puts " "
    birth
  end

  def birth
    @asleep = false
    @stuff_in_belly = 10
    @stuff_in_intestine = 0
    @owner_alive = true

    puts "#{@name} is born."
    take_command
  end

def take_command
  while @owner_alive == true
  puts " "
  puts "Please enter a command! ('feed', 'walk', 'put to bed', 'toss' or 'rock' - 'quit' to leave)"
    command = gets.chomp
    if command.downcase == "feed"
      feed
    elsif command.downcase == "walk"
      walk
    elsif command.downcase == "put to bed"
      put_to_bed
    elsif command.downcase == "toss"
      toss
    elsif command.downcase == "rock"
      rock
    elsif command.downcase == "quit"
      exit
    else
      puts "Command not recognised!"
      take_command
    end
  end
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
      take_command
    end
  end

  def toss
    puts "You toss #{@name} up into the air"
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
      puts '...but wakes when you stop'
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
        puts "He wakes up suddenly!"
      end
      puts "#{@name} is starving! In desperation, he ate YOU!"
      @owner_alive = false
      exit
    end
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident"
      take_command
    end
    if hungry?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name}'s stomach grumbles"
      take_command
    end
    if poopy?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name} does the potty dance"
      take_command
    end
  end
end
