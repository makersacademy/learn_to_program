class Dragon
  attr_accessor :name

  def initialize name
    @name = name
    @asleep = false
    @food_in_belly = 10
    @stuff_in_intestine = 0

    puts "#{@name} is born"
    user_input
  end

  def feed
    puts "You feed #{@name}."
    @food_in_belly = 10
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

#private

  def hungry?
    @food_in_belly <=2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    #FOOD RULES
    if @food_in_belly > 0 #if there is food...
      @food_in_belly -= 1
      @stuff_in_intestine +=1
    else #if he hasn't eaten...
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{name} is starving! In desperation, he ate you!"
      exit
    end
    #POOP RULES
    if @stuff_in_intestine >=10
      @stuff_in_intestine = 0
      puts "Whoops! #{name} had an accident..."
    end

    if hungry?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly."
      end
      puts "#{name}'s stomach grumbles"
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} does the potty dance"
    end
  end

  def user_input
    answer = ""
    answer_array = ['feed','walk','put to bed','toss','rock','quit']
    while answer != "quit"
      puts "What do you want to do with #{name}?"
      puts "The options are 'feed', 'walk', 'put to bed', 'toss' or 'rock'. Or you can 'quit' the programme..."
      print ">"
      answer = gets.chomp
      if !(answer_array.include?(answer))
        puts "Sorry, I don't know that one... try 'walk'"
      else
        case answer
        when "feed"
          feed
        when "walk"
          walk
        when "put to bed"
          put_to_bed
        when "toss"
          toss
        when "rock"
          rock
        when "quit"
          exit
        end
      end
    end
  end
end
