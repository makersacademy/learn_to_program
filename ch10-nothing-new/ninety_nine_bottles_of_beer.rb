require_relative "english_number.rb"

number = 99 # initial bottle count

while number > 2 do
  eng_number = english_number(number)
  puts "#{eng_number.capitalize} Bottles of Beer on the wall, " +
       "#{eng_number} bottles of beer!"
  number -= 1
  eng_number = english_number(number)
  puts "Take one down, pass it around, " +
       " #{eng_number.capitalize} bottles of beer on the wall!"
end
