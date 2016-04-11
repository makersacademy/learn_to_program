class Dragon
  def initialize name 
    @name = name
  end

  def eat 
    puts "#{@name} eats some food."
  end

  def drink 
    puts "#{@name} drinks some mead."
  end

  def walk 
    puts "#{@name} walks down the street."
  end

  def sleep 
    puts "#{@name} sleeps off a day of fire-breathing."
  end

  def breathe 
    puts "#{@name} toasts some marshmallows."
  end

  puts "Name your baby dragon."
  baby = Dragon.new name

  while true 
    puts 'What would you like your dragon to do?'
    puts 'Your dragon can eat, drink, walk, sleep, or breathe fire. Otherwise you may exit.'
    command = gets.chomp

    if command == 'exit'
      exit
    elsif command == 'eat'
      baby.eat
    elsif command == 'drink'
      baby.drink
    elsif command == 'walk'
      baby.walk
    elsif command == 'sleep'
      baby.sleep
    elsif command == 'breathe fire'
      baby.breathe
    else 
      puts 'Please enter a valid command.'
    end
  end
end

baby = Dragon.new 'George'
