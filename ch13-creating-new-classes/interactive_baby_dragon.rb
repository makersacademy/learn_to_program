puts "What is the name for your dragon?"
name = gets.chomp
dragon = Dragon.new name
while true
    puts "Key in: /'feed/',/'toss/',/'walk/',/'rock/',/'sleep/',/'exit/'"
    keyEntered = gets.chomp
    if keyEntered == 'feed'
        dragon.feed
        elsif keyEntered == 'toss'
        dragon.toss
        elsif keyEntered == 'walk'
        dragon.walk
        elsif keyEntered == 'rock'
        dragon.rock
        elsif keyEntered == 'sleep'
        dragon.put_to_bed
        else
        puts "Key in a command please!"
    end
end

