require './english_number.rb'

def beer_song (n)
    
    while n > 0
        bottles = n == 1 ? "bottle" : "bottles"
    
        puts "#{english_number(n).capitalize} #{bottles} of beer on the wall,"
        puts "#{english_number(n).capitalize} #{bottles} of beer,"
        puts "Take one down, pass it around"
        n -= 1
        puts "#{english_number(n).capitalize} bottles of beer on the wall."
        
        n = n-1
    end
end
