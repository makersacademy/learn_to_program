# Interactive baby dragon. Write a program that lets you enter commands
#such as feed and walk and calls those methods on your dragon. Of course,
#since you are inputting just strings, you will need some sort of method
#dispatch, where your program checks which string was entered and then
#calls the appropriate method.
class Dragon

  def initialize (name)
    @name = name
    "#{@name} is alive!!!"
  end

  puts "What would you like to call your dragon?"
  name = gets.chomp
  pet = Dragon.new (name)


  def feed
    puts "you fed #{@name}."
  end

  def walk
    puts "#{@name} went for a walk."
  end


    puts "Would you like to walk or feed #{name}?"
    response = gets.chomp

    if response == "feed"
      pet.feed

    elsif response == "walk"
      pet.walk

    else
      puts "I don't understand. Goodbye"
    end

end
