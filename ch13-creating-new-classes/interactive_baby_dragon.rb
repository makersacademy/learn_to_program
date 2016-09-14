class Dragon
def initialize name
@name = name
@asleep = false
@stuff_in_belly = 10
@stuff_in_intestine = 0
puts "#{@name} is born."
end

def feed
  puts "You feed #{@name}."
  @stuff_in_belly = 10

end

def walk
  puts "You walk #{@name}."
  @stuff_in_intestine = 0

end

def put_to_bed

  puts "You put #{@name} to bed."
  @asleep = true
  3.times do
    if @asleep

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

end

def rock
  puts "You rock #{@name} gently."
  @asleep = true
  puts 'He briefly dozes off...'
  
  if @asleep
    @asleep = false
    puts '...but wakes when you stop.'
  end
end



puts 'What would you like to name your baby dragon?'
name = gets.chomp
pet = Dragon.new name

while true
  puts
  puts 'commands: feed, toss, walk, rock, put to bed, exit'
  command = gets.chomp

  if command == 'exit'
    exit
  elsif command == 'feed'
    pet.feed
  elsif command == 'toss'
    pet.toss
  elsif command == 'walk'
    pet.walk
  elsif command == 'rock'
    pet.rock
  elsif command == 'put to bed'
    pet.put_to_bed
  else
    puts 'Huh? Please type one of the commands.'
  end
end
end
