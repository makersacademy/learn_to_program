#!/usr/bin/env ruby

class Dragon

  def initialize name
    @name, @asleep, @stuff_in_belly, @stuff_in_guts = name, false, 10, 0

    puts "#{@name} is born."
  end



  def feed
    puts "You feed #{@name}"
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}"
    @stuff_in_guts = 0
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
    puts "You toss #{@name} up into the air.\nHe giggles, which singes your eyebrows."
    passage_of_time
  end

  def rock
    puts "you rock #{@name} gently."
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
      @stuff_in_guts >= 8
    end

    def passage_of_time
      if @stuff_in_belly > 0
        @stuff_in_belly -= 1
        @stuff_in_guts  += 1
      else
        if @asleep
          @asleep = false
          puts "He wakes up suddenly!"
        end
        puts "#{@name} is starving! Indesperation, he ate YOU"
        exit
      end
      if @stuff_in_guts >= 10
        @stuff_in_guts = 0
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

  pet = Dragon.new 'Bob'

  puts 'What would you like to do? (Feed/Walk/Put to bed/Rock/Toss)'
    command = gets.chomp.downcase

  while command != "exit"

    if command == "feed"
    pet.feed
     command = gets.chomp.downcase
    elsif command == "walk"
      pet.walk
       command = gets.chomp.downcase
    elsif command == 'toss'
      pet.toss
       command = gets.chomp.downcase
    elsif command == 'put to bed'
      pet.put_to_bed
       command = gets.chomp.downcase
    elsif command == 'rock'
      pet.rock
       command = gets.chomp.downcase
    else
      kputs "You can't do that. You can feed, walk, rock, toss, put to bed or exit."
       command = gets.chomp.downcase
    end
  end


