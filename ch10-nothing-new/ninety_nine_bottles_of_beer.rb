


def bottlesOfBeer number

  require './english_number.rb'

  (1..number).reverse_each do |bottle|
    puts "#{(english_number (bottle)).capitalize} bottles of beer on the wall, #{english_number bottle} bottles of beer."
    puts "Take one down and pass it around, #{english_number (bottle-1)} bottles of beer on the wall."
    puts
  end
end

#bottlesOfBeer 10