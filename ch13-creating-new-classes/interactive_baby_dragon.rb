class Dragon
  def initialize(name)
    @name = name
    puts "#{@name} is born."
    option
  end

  def walk
    puts "you walk #{@name}"
  end

  def feed
    puts "you feed your little dragon #{@name}"
  end

  def poop
    puts "#{@name} went to the toilet"
  end

  def sleep
    puts "zzzzzzzzzzzzzzzzzzzz"
  end

  def option
    puts "what you wanna do? walk? feed? poop? sleep? say bye to stop clownin"
    answer = gets.chomp.downcase
    if answer == "feed"
      feed
      option
    elsif answer == "poop"
      poop
      option
    elsif answer == "sleep"
      sleep
      option
    elsif answer == "walk"
      walk
      option
    elsif answer == "bye"
      puts "goodbye"
    else
      puts "u playin"
      option
    end
  end
end
