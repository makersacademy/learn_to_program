require './ch10-nothing-new/english_number'

def bottlesOfBeerSong(n)
    while n >= 3
        puts "#{english_number(n)} bottles of beer on the wall,".capitalize
        puts "#{english_number(n)} bottles of beer,".capitalize
        puts "Take one down, pass it around,"
        n -= 1
        puts "#{english_number(n)} bottles of beer on the wall.".capitalize
    end

    if n == 2
        puts "#{english_number(n)} bottles of beer on the wall,".capitalize
        puts "#{english_number(n)} bottles of beer,".capitalize
        puts "Take one down, pass it around,"
        n -= 1
        puts "#{english_number(n)} bottle of beer on the wall.".capitalize
    end
    
    if n == 1
        puts "#{english_number(n)} bottle of beer on the wall,".capitalize
        puts "#{english_number(n)} bottle of beer,".capitalize
        puts "Take one down, pass it around,"
        n -= 1
        puts "#{english_number(n)} bottles of beer on the wall.".capitalize
    end
    
    return "" if n == 0
end