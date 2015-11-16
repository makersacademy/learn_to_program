class Dragon
  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10 # He's full.
    @stuff_in_intestine = 0 # He doesn't need to go.
    puts "#{@name} is born."
    action_to_apply
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
    action_to_apply
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
    action_to_apply
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true

    3.times do
      passage_of_time if @asleep
      puts "#{@name} snores, filling the room with smoke." if @asleep
    end

    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
    action_to_apply
  end

  def toss
    puts "You toss #{@name} up into the air."
    puts 'He giggles, which singes your eyebrows.'
    passage_of_time
    action_to_apply
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
    action_to_apply
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
      # Move food from belly to intestine.
      @stuff_in_belly = @stuff_in_belly - 1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else # Our dragon is starving!
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
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
end



  def action_to_apply
    puts
    puts "You can do some tasks with #{@name}: 1 = Feed, 2 = Walk, 3 =Put to bed, 4 = Toss, 5 = Rock or 6 = Exit"
    puts "Choose your option number: "
    @decision = gets.chomp

    while @decision.to_i >= 1 && @decision.to_i <= 6
      feed        if @decision == "1"
      walk        if @decision == "2"
      put_to_bed  if @decision == "3"
      toss        if @decision == "4"
      rock        if @decision == "5"

      if @decision == "6"
        puts "Bye"
        @decision = 0
      end
    end

    puts "Wrong option, bye............" if @decision =~ /[^123456]/

  end

  


pet = Dragon.new("Thor")
