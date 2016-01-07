require_relative "english_number"

def bottles_song(number)
  while number != 0
    english_num = english_number(number).capitalize
    if number == 1
      print english_num + " bottle of beer on the wall, "
      puts english_num + " bottle of beer."
      print "Take one down and pass it around, no more bottles of beer on the wall."
    else
      print english_num + " bottles of beer on the wall, "
      puts english_num + " bottles of beer."
      puts "Take one down and pass it around, " + english_number(number - 1) + " bottles of beer on the wall"
    end
    number -= 1
  end
end

puts bottles_song(1000000)