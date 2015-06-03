class Dragon

  def initialize name
    @name = name
    puts "#{@name} is born"
  end

  def feed
    puts 'You feed him'
  end

  def sleep
    puts 'You put him to sleep'
  end

  def walk
    puts 'You take him for a walk'
  end

  def rock
    puts 'You rock him for a while'
  end

  def toss
    puts 'You toss him in the air - wheee!'
  end
end

puts 'What is the name of your dragon?'
name = gets.chomp
pet = Dragon.new name #do this to create a new class object (??) i.e. to create a new person/character for the program to run over
                      #if pass through 'name' variable then need to use it in methods above, otherwise an error will occur
while true

  puts 'What do you want to do with your dragon today?'
  puts 'feed:walk:sleep:rock:toss:exit'
  action = gets.chomp

  if action == 'exit'
    exit
  elsif action == 'feed'
    pet.feed
  elsif action == 'walk'
    pet.walk
  elsif action == 'sleep'
    pet.sleep
  elsif action == 'rock'
    pet.rock
  elsif action == 'toss'
    pet.toss
  else
    puts 'Please type in one of the commands'
  end
end
