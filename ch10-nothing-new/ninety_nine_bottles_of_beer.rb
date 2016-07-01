require_relative 'english_number.rb'
def ninety_nine_bottles_of_beer
    number = 99
    while number > 1
      puts english_number(number).capitalize+" bottles of beer on the wall, "+ english_number(number)+ " bottles of beer!" +
          "\nTake one down, pass it around " + english_number(number) +" bottles of beer on the wall!"
      if number == 2
        puts "No more bottles of beer on the wall, no more bottles of beer."
      end
      number -= 1
    end
end

puts ninety_nine_bottles_of_beer

