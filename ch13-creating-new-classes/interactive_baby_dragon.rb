# your code here
class Dragon
  def initialize name
    @name = name
    @sleep = false
    @stufff_in_belly = 10 # He is full.
    @stuff_in_intestine = 0 # He doesnt need to go
  end
  def feed
    puts "You feed #{@name}"
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
    puts "He giggles, which singes your eyebrows"
    passage_of_time
  end
  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts "He briefly dozes off...."
    passage_of_time
    if @asleep
      @asleep = false
      puts 'He wakes you wnen you stop.' 
    end
  end
  private
  def hungry?
    @stuff_in_belly <=2
  end
  def poopy?
    @stuff_in_intestine >= 8 
  end 
  def passage_of_time
    if @stuff_in_belly > 0
       @stuff_in_belly = @stuff_in_belly -1
       @stuff_in_intestine = @stuff_in_intestine + 1
    else
      if @asleep 
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} is starving!  In desparation he ate YOU!!"
      exit
    end
    if @stuff_in_intestine >= 10
       @stuff_in_intestine = 0
       puts "whoops #{@name} had an accident..."
    end
    if hungry? 
      if @asleep
        @asleep = false
        puts'He wakes up suddenly'
      end
      puts "#{@name}'s stomach grumbles..."
    end
    if poopy?
      if @asleep
         @asleep = false
         puts 'He waks up suddenly..'
      end
      puts "#{@name} does the potty dance..."
    end
  end
end
def createDragon
 puts 'Please enter a name for your pet dragon'
 return name = gets.chomp
  
end 
def despatch command
  #despatch comand eg feed etc.
end
def mainloop
 name = createDragon
 yourdragon = Dragon.new name
 command = ''
 while command != 'exit'
  puts 'Please command your dragon (feed, walk, put_to_bed, toss, rock or exit)'
  command = gets.chomp.downcase
  case command
  when 'feed'
    yourdragon.feed
  when 'walk'
    yourdragon.walk
  when 'put_to_bed'
    yourdragon.put_to_bed
  when 'toss'
    yourdragon.toss
  when 'rock'
    yourdragon.rock 
  when 'exit'
    break
  else
    puts'Command not recognised please try again'
  end
 end
end
mainloop

