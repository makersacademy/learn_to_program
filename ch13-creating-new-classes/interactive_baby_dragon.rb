class BabyDragon

  attr_reader :name, :description
  attr_accessor :stuff_in_intestine, :stuff_in_belly, :asleep

  def initialize(name, description)
    @name = name
    @asleep = false
    @description = description
    @stuff_in_belly = 10
    @stuff_in_intestine = 0
  end

  def about
    puts "Your dragon #{name} is a #{description} dragon."
  end

  def feed
    puts "You're now feeding #{name}."
    self.stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You're now walking #{name}."
    self.stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You're putting #{name} to bed."
    self.asleep = true
    if asleep
      puts "#{name} snores, filling the room with smoke."
      passage_of_time
    else
      self.toss
    end
  end

  def toss
    puts "You're tossing #{name} up into the air."
    puts "He giggles, which singes your eyebrows."
    passage_of_time
  end

  def rock
    puts "You're rocking #{name} gently."
    self.asleep = true
    puts "He briefly dozes off..."
    passage_of_time
  end

  private
  def passage_of_time
    if stuff_in_belly > 0
      self.stuff_in_belly -= 1
      self.stuff_in_intestine += 1
    else
      if asleep
        self.asleep = false
        puts "He wake up suddenly!"
      end
      puts "#{name} is starving! In desperation, he ate you :("
      exit
    end
  end
end

dragon = BabyDragon.new('Kimo', 'brimstoon')

while true
  puts "Enter a command to control your dragon: "
  command = gets.chomp
  case command
  when 'feed' then dragon.feed
  when 'walk' then dragon.walk
  when 'about' then dragon.about
  when 'put_to_bed' then dragon.put_to_bed
  when 'toss' then dragon.toss
  when 'rock' then dragon.rock
  else 
    puts "Invalid input. Please re-enter."
  end
  break if command == 'exit'
end
