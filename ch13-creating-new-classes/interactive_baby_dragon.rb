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
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true  
    3.times do
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
        passage_of_time
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end

  def toss
    puts "You toss #{@name} up into the air."
    puts "#{@name} giggles, which singes your eyebrows."
    passage_of_time
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true 
    puts "#{@name} briefly dozes off..."
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

  def needs_to_go?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0 
      @stuff_in_belly -= 1
      @stuff_in_intestine += 1
    else 				#too little in the dragon's stomach; exit routine
      if @asleep
        @asleep = false
        puts "#{@name} wakes up suddenly!"
      end
      puts "#{@name} is starving! In desperation, he ate YOU!"
      exit
    end

    if @stuff_in_intestine >= 10 	#too much in the dragon's stomach; overflow routine
      @stuff_in_intestine = 0 
      puts "Whoops! #{@name} had an accident..."
    end

    if hungry?				#warns if amount in stomach is low
      if @asleep
        @asleep = false
        puts "#{@name} wakes up suddenly!"
      end      
      puts "#{@name}'s stomach grumbles"
    end

    if needs_to_go?			#warns if amount in intestine is high
      if @asleep
       @asleep = false
       puts "#{@name} wakes up suddenly!"
      end
      puts "#{@name} REALLY needs to go!"
    end
  end

end


def application_start
  puts "Welcome! Please choose a name for your dragon:"
  name = gets.chomp
  pet = Dragon.new(name)
  puts "What would you like to do now? Type help to see available options."
  action = gets.chomp  

  while action
     case action
     when "feed" then pet.feed
     when "walk" then pet.walk
     when "put to bed" then pet.put_to_bed
     when "toss" then pet.toss
     when "rock" then pet.rock
     when "help" then puts "You can feed, walk, put to bed, toss or rock your dragon, or type exit to quit."
     when "exit" then exit
     else puts "I don't recognise that command - type help for more information."
     end
  puts "What would you like to do next?"
  action = gets.chomp
  end

end

def user_input
  selection = gets.chomp

  case selection
    when "feed" then pet.feed
    when "walk" then pet.walk
   end

end




application_start
