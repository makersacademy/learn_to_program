require_relative './english_number.rb'
def song beers
  while beers !=0
    puts "#{english_number(beers)} bottles of beer on the wall, #{english_number(beers)} bottles of beer.\n" "Take one down and pass it around, #{english_number(beers - 1)} bottles of beer on the wall."
beers = beers - 1
end
end

p song(11)
