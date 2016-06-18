class Dragon

  def initialize
    puts "Your dragon is hatching!"
    puts "What would you like to call him?"
    @name = gets.chomp.capitalize
    @asleep = false
    @stuff_in_belly = 10
    @stuff_in_intestine = 0

    puts "#{@name} is hatched."
    action
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
    action
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
    action
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
    action
  end

  def toss
    puts "You toss #{@name} up into the air."
    puts "He giggles, which singes your eyebrows."
    passage_of_time
    action
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts "He briefly dozes off..."
    passage_of_time
    if @asleep
      @asleep = false
      puts '... but wakes when you stop.'
    end
    action
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
      @stuff_in_belly -= 1
      @stuff_in_intestine += 1
    else
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name} is starving! In desperation he ate YOU!"
      exit
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

  def action
    puts "What would you like to do with your dragon?"
    puts "You can 'feed', walk', 'rock' or 'toss' you dragon, or put your dragon to 'bed'."
    @action = gets.chomp.downcase
    while (@action != "feed") or (@action != "walk") or (@action != "rock") or (@action != "toss") or (@action != "bed")
      if @action == "feed"
        feed
      elsif @action == "walk"
        walk
      elsif @action == "rock"
        rock
      elsif @action == "toss"
        toss
      elsif @action == "bed"
        put_to_bed
      else
        puts "Please enter 'feed', 'walk', 'rock', 'toss' or 'bed'."
        @action = gets.chomp.downcase
      end
    end
  end
end

Dragon.new
