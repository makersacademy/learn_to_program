# your code here
require_relative 'english_number'

def ninety_nine_song beers
    beers.times do 
        puts english_number(beers) + " #{beers == 1 ? "bottle" : "bottles"} of beer on the wall"
        puts english_number(beers) + " #{beers == 1 ? "bottle" : "bottles"} of beer"
        puts "Take one down and pass it around"
        beers = beers - 1
        puts english_number(beers) + " #{beers == 1 ? "bottle" : "bottles"} of beer on the wall"
    end
end

ninety_nine_song (15)
