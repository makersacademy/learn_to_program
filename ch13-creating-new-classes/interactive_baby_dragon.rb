class Dragon
  def initialize name
    @age = 0
    @name = name
    
    @food = 5
    @poop = 3
    @tiredness = 6
    
    @maxfood = 10
    @maxpoop = 7
    
    @asleep = false
  end
  
  def interface
    puts "Welcome to 'dragonsimulatorwhichisreallyatamagocy'. press any key to start"
    gets.chomp
    turn
  end
 
  private
  
  def feed_babies
    if @sleep
      puts "Your dragon is sleeping, so you do nothing"
    else
      puts "You feed some nondescript food to your dragon"
      @food += 2
    end
    end_of_turn
  end
  
  def walk_outside
    if @sleep
      puts "Your dragon is sleeping, so you do nothing"
    else
      puts "You walk your dragon in the park"
      @poop = 0
    end
    end_of_turn
  end
  
  def put_to_bed
    puts @sleep ? "Your dragon is sleeping already" : "You put your dragon to sleep."
    @sleep = true
    end_of_turn
  end
  
  def awake
    puts @sleep ? "You wake up your dragon" : "Your dragon is awake already, so you play some games"
    @sleep = false
    end_of_turn
  end
  
  def end_of_turn
    @age += 1
    @food -= 1
    @sleep ? @tiredness +=1 : @tiredness -= 1
    @poop += 1
    
    grow_dragon if @age > 14
    
    if @food == 0
      puts "Your dragon starved to dead, gg"
      exit(1)
    elsif @poop >= @maxpoop
      puts "Your dragon explode in a shower of fiery excrements, gg"
      exit(1)
    elsif @food >= @maxfood
      puts "Your dragon vomits incandescent food all over you. He's fine, but you die."
      exit(1)
    elsif @tiredness == 0
      puts "your dragon actually dies of tiredness."
      exit(1)
    end
    
    print "He looks quite tired. " if @tiredness < 3
    print "He's starving. " if @food < 3
    print "He ate too much. " if @food > @maxfood - 3
    print "He seems uneasy in the stomach. " if @poop > @maxpoop - 3
    puts ""
    
    turn
  end
  
  def turn
    print @sleep ? "\nYour dragon is sleeping. " : "\nYour dragon is awake. "
    puts "What you want to do? wake up | put to sleep | feed | make him poop | do nothing"
    case gets.chomp
      when "feed" then feed_babies
      when "wake up" then awake
      when "put to sleep" then put_to_bed
      when "make him poop" then walk_outside
      when "do nothing" then end_of_turn
    else
        puts "Wrong command, try again"
        turn
    end
  end
  
  def grow_dragon
    puts "\n\nSomething is Happening..."
    puts "\n.\n.\n."
    puts "Your baby dragon is evolving! He's now a chicken! You win!"
    exit(0)
  end

end

charizard = Dragon.new charizard
charizard.interface