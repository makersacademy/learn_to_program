require './ch10-nothing-new/english_number.rb'

 def pluralize(num, word)
   num == "one" ? num + " " + word : num + " " + word + "s"
 end
 
 count = 9999
 while count > 0
   number_bottles = english_number(count)
   bottles = pluralize(number_bottles, "bottle")
   puts "#{bottles.capitalize} of beer on the wall, #{bottles} of beer."
   count -= 1
   bottles = pluralize(english_number(count), "bottle")
   puts "Take one down and pass it around, #{bottles} of beer on the wall."
 end