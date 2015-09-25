class Dragon
  def initialize(name)
    @name = name
    @asleep = false
    $alive = true
    @stuff_in_belly = 10
    @stuff_in_intestine = 0
    
    puts "#{@name} is born!"
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}."
    stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "you put #{@name} to bed."
    @asleep = true
    3.times {
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
    }
    if @asleep
      @asleep = false
  	puts "#{@name} wakes up slowly."
    end
  end

  def toss
    puts "You toss #{@name} up into the air."
    puts "#{@name} giggles, which singes your eyebrows."
    passage_of_time
  end
  
  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts "he briefly dozes off..."
    passage_of_time
    if @asleep
      @asleep = false
      puts "...but wakes up when you stop."
    end
  end

  private

  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      @stuff_in_belly -= 1
      @stuff_in_intestine += 1
    else
      if @asleep 
        @asleep = false
        puts "#{@name} wake up suddenly!"
      end
      puts "#{@name} is starving! In desperation, he eats you."
      $alive = false
    end
    if @stuff_in_intestine >=10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end
  
    if hungry?
      if @asleep
        @asleep = false
        puts "#{@name} wakes up suddenly!"
      end
      puts "#{@name}'s stomach grumbles..."
    end
    
    if poopy?
      if @asleep
        @asleep = false
        puts "#{@name} wake up suddenly!"
      end
      puts "#{@name} does the potty dance..."
    end
  end
end


puts "Welcome to Dragon Nursery!"
puts "A momma dragon is about to give birth!"
puts "What would you like to call your baby dragon?"

input = gets.chomp.downcase.capitalize 
pet = Dragon.new(input)

puts "What would you like to do with #{input}? Be responsible otherwise it may eat you."

while $alive
  puts "Your options are: 1) Feed \t2) Walk \t3)Put to Bed \t4)Play \t5)Rock to Sleep"
  $ans = gets.chomp.downcase
  if $ans.include?('feed')
    pet.feed
  elsif $ans.include?('walk')
    pet.walk
  elsif $ans.include?('put')
    pet.put_to_bed
  elsif $ans.include?('play')
    pet.toss
  elsif $ans.include?('rock')
    pet.rock
  else
    puts "Sorry, didn't understand that: be more specific! Use the key word for each option!"
  end
end

exit











# your code here