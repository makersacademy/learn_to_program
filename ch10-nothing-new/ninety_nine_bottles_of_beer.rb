require './english_number.rb'

puts "Enter the number of beers you'd like to drink!"

beers = beers_to_drink = gets.chomp.to_i

number_in_words = english_number(beers)
puts "#{number_in_words} bottles of beer on the wall, #{number_in_words} bottles of beer."

while beers > 1
  beers = beers - 1
  number_in_words = english_number(beers)
  puts "Take one down and pass it around, #{number_in_words} bottles of beer on the wall."
  puts ""
  puts "#{number_in_words} bottles of beer on the wall, #{number_in_words} bottles of beer."
end

puts "Take one down and pass it around, no more bottles of beer on the wall."
puts ""
puts "No more bottles of beer on the wall, no more bottles of beer. "
puts "Go to the store and buy some more, #{english_number(beers_to_drink)} bottles of beer on the wall."
