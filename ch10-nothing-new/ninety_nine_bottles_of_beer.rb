require_relative 'english_number.rb'

def ninety_nine_bottles_of_beer num
	english_num = english_number num
	if (num > 1)
		puts "\n#{english_num.capitalize} bottles of beer on the wall,\n#{english_num.capitalize} bottles of beer,\nTake one down, pass it around, #{english_num} bottles of beer on the wall!"
		ninety_nine_bottles_of_beer num-1
	else 
		puts "\n#{english_num.capitalize} last bottle of beer on the wall,\n#{english_num.capitalize} lonely bottle of beer,\nTake one down, pass it around, no more bottles of beer on the wall!"
	end
end

ninety_nine_bottles_of_beer 99