require_relative 'expand_english.rb'

def plurals(num, word)
num == "one" ? num + " " + word : num + " " + word + "s"
end
count = 999
while count > 0
  number_bottles = english_number(count)
  bottles = plurals(number_bottles, "bottle")
  puts "#{bottles.capitalize} of beers on the wall, #{bottles} of beer."
  count -= 1
  bottles = plurals(english_number(count), "bottle")
  puts "Take one down and pass it around, #{bottles} of beer on the wall."
end
