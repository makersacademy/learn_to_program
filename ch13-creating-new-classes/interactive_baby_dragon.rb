
class Dragon

  GENDERS = {
  "she" => "her",
  "he" => "him"
  }

  def initialize(name, gender, eye_color, body_color)
    @gender = gender
    @name = name
    @body_color = gender
    @eye_color = eye_color
    @asleep = false
    @stuff_in_belly = 10 #he's full
    @stuff_in_intestine = 0 #doesn't neet to go yet
    puts "You smile at #{GENDERS.fetch(gender)}. #{name} gurgles, and yawns. You're convinced #{gender} smiles back at you!"
  end

  attr_reader :name, :gender

  def feed
    puts "You feed #{name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{name}."
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{name} to bed."
    @asleep = true
    3.times do

    passage_of_time if @asleep
    if @asleep
      puts "#{name} snores, filling the room with smoke."
      end
    end
    if @asleep
      @asleep = false
      puts "#{name} wakes up slowly."
    end
  end

  def toss
    puts "You toss #{name} up into the air."
    puts "#{gender.capitalize} giggles, which singes your eyebrows."
    passage_of_time
  end

  def rock
    puts "You rock #{name} gently."
    @asleep = true
    puts 'He briefly dozes off...'
    passage_of_time
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  private

  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >=8
  end

  def passage_of_time
    if @stuff_in_belly > 0
    @stuff_in_belly = @stuff_in_belly - 1
    @stuff_in_intestine = @stuff_in_intestine + 1
    else
      if @asleep
        @asleep = false
        puts "#{gender.capitalize} waskes up suddenly!"
      end
      puts "#{name} is starving! In desparation, #{gender} ate YOU!"
      exit
    end
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{name} had an accident..."
    end

    if hungry?
      if @asleep
          @asleep = false
      puts "#{gender.capitalize} wakes up suddenly!"
      end
      puts "#{name}'s stomach grumbles..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{name} does the potty dance..."
    end
  end
end


colors = ["maroon", "scarlet", "olive green", "forest green", "teal blue", "turquoise", "indigo", "violet", "lavander", "magenta", "bright yellow", "strawberry-colored", "apricot-colored", "silver", "peach-colored"]
gender = Dragon::GENDERS.keys.sample
egg_color = colors.sample
eye_color = colors.sample
body_color = colors.sample

puts "You can see the dragon egg moving. You've been waiting for this moment for a long time!\nCracks are forming on the egg's #{egg_color} surface. Only small, almost invisible ones at first, but then larger and larger ones until the egg is ready to hatch!\nYou're very excited to see your new pet dragon! #{gender.capitalize} is small, chubby, and #{body_color} with dark #{eye_color} eyes."
puts "What will you name #{Dragon::GENDERS.fetch(gender)}?"
name = gets.chomp
name = name.capitalize
pet = Dragon.new(name, gender, eye_color, body_color) if name

puts "What would you like to do now? You can toss, feed, walk, rock or put your dragon to bed. Or you can exit the game with 'exit'."

while true
  command = gets.chomp
  case command
    when "toss"
      pet.toss
    when "feed"
      pet.feed
    when "walk"
      pet.walk
    when "rock"
      pet.rock
    when "put to bed"
      pet.put_to_bed
    when "exit"
      exit
    else
      puts "Sorry, that doesn't make sense, please type one of the following commands - toss, feed, walk, rock, put to bed, exit."
    end
end




