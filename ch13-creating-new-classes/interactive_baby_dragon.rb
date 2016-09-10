class Dragon
  def initialize name
    @name = name
  end

  def feed
    puts "#{@name} is sharing your burrito. Munch, munch, munch. Nothing is left for you..."
  end

  def walk
    puts "#{@name} is enjoying the walk in the park."
  end

  def put_to_bed
    puts "You tuck #{@name} into bed."
    3.times do
        puts "#{@name} snores, filling the room with smoke."
      end
  end

  def rock
    puts "You rock #{@name} gently."
    puts 'He briefly dozes off...'
    puts '...but wakes when you stop.'
  end
end

puts "Hello there! You get to take care of a dragon today. Which dragon (enter name) would you like to spend some time with?"
name = gets.chomp
pet = Dragon.new (name)

puts "Since #{name} is a baby dragon, make sure you feed, walk, rock and put it to bed at appropriate time."

5.times do
  puts "What would you like to do with #{name}?"
  action = gets.chomp

    if action =~ /feed/
      pet.feed
    elsif action =~ /walk/
      pet.walk
    elsif action =~ /rock/
      pet.rock
    elsif action =~ /bed/
      pet.put_to_bed
      exit
    else
      puts "#{name} doesn't get what you're trying to do."
    end
end
