
class Dragon
  def initialize(name)
    @name = name
    @asleep = false
    @stuff_in_belly = 10
    @stuff_in_intestine = 0

    1.upto(10) do |n|
      print "."
      sleep(0.5)
    end
    print "#{@name} is born\n" 
  end

  def name
    @name
  end

  def feed
    puts "You feed #{@name}"
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}."
    passage_of_time
  end

  def go_to_bed
    puts "You put #{name} to bed."
    @asleep = true
    3.times do |variable|
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke"
      end  
    end

    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly"
    end
  end

  def toss
    puts "You toss #{@name} up in the air"
    puts "He giggles, which singes your eyebrows"
    passage_of_time
  end

  def rock
    puts "You rock #{name} gently."
    @asleep = true
    puts "He briefly dozes off..."
    passage_of_time
      if @asleep
        asleep = false
        puts "...but wake when you stop."
      end
  end

  def poop
    if stuff_in_intestine < 2
      puts "#{name} looks are you, like its saysing duuuude.... I don't need to go live me alone"
    else
    puts "You send #{name} to fly to the poopy lake!"
    puts "#{name} comes back after 2 hours and looks very relieved!"
    @stuff_in_intestine = 0
    passage_of_time
    end
  end
  private

  def passage_of_time
    if @stuff_in_belly > 0
      @stuff_in_belly -= 1
      @stuff_in_intestine += 1
    else
      if @asleep
        @asleep = false
        puts "He wakes up suddently!"
      end
      puts "#{name} is starving! In desperation he are YOU!"
      exit
    end
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end

    def hungry?
      if @asleep
        @asleep = false
        puts "He wakes up suddenlty!"
      end
      puts "#{name}'s stomach grumbles..."
    end

    def poopy?
      if @asleep
        @asleep = false
        puts "He wakes up suddently!"
      end
      puts "#{name} does the potty dance..."
    end
  end
end



input = ""
puts "Hello! Welcome to your pet dragon game!"
sleep(2)
puts
sleep(2)
puts "In order to start please enter the name of your pet Dragon!\n"
#dragonname= gets.chomp
pet1 = Dragon.new(gets.chomp)
sleep(2)
puts "Congratulations you are now the proud owner of a dragon!\n"
sleep(2)
puts "#{pet1.name}: GRAAAAUAUAUAUAUAAAAAA\n" 
sleep(2)
puts
puts "You dragon can walk, eat, sleep, poop and sleep.\nMake sure your dragon is happy. He might die or eat you if you dont watch out!"
puts 
sleep(1)
while true do
print "What should #{pet1.name} do?: " 
input= gets.chomp.downcase
  if input== "exit"
    exit
  
  elsif input == "sleep" 
    pet1.go_to_bed
  else
  pet1.(input)
  end
end

