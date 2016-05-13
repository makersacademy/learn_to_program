class Dragon

  def initialize(name)
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
    puts "You walk #{@name} in the woods."
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
      if @asleep
        @asleep = false
        puts "#{@name} wakes up slowly."
      end
    end
  end

    def toss
      puts "You toss #{name} up into the air."
      puts "He giggles, which singes your eyebrows."
      passage_of_time
    end

    def rock
      puts "You rock #{name} gently."
      @asleep = true
      puts "He briefly dozes off ..."
      passage_of_time
      if @asleep
        @asleep = false
        puts "... but wakes when you stop."
      end
    end

      private
      def hungry?
        @stuff_in_belly <= 5
      end

      def poopy?
        @stuff_in_intestine >=5
      end

      def passage_of_time
        if @stuff_in_belly > 3
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
          puts "Whoops! #{@name} had an accident ... "
        end

        if @stuff_in_belly <= 6
          if @asleep
            @asleep = false
            puts "He wakes up suddenly!"
          end
          puts "#{@name}'s stomach grumbles"
        end

        if poopy?
          if @asleep
            @asleep = false
            puts "He wakes up suddenly!"
          end
          puts "#{@name} does the potty dance ... "
        end
      end
end

def run_dragon
  puts "What would you like to call your baby dragon?"
  name = gets.chomp
  dragon = Dragon.new(name)
  puts "These are your commands: feed, walk, bed, toss, rock or quit. Try to keep your dragon alive. "

  while true
    puts "Enter command: "
    command = gets.chomp.downcae
    if command == "quit"
      exit
    elsif command == "feed"
      dragon.feed
    elsif command == "walk"
      dragon.walk
    elsif command == "bed"
      dragon.bed
    elsif command == "toss"
      dragon.toss
    elsif command == "rock"
      dragon.rock
    else puts "That was not one of the official commands. "
    end
  end
end
