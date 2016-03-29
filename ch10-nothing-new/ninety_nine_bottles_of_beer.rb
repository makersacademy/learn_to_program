require './english_number.rb'

def print_song(bottles)

	bottles = 0 if bottles < 0

	while bottles >= 2
		num = english_number(bottles).capitalize
		puts "#{num} bottles of beer on the wall,"
		puts "#{num} bottles of beer,"
		puts "Take one down, pass it around,"
		bottles -= 1
		num = english_number(bottles).capitalize
		if bottles > 1
			puts "#{num} bottles of beer on the wall."
		else
			puts "One bottle of beer on the wall."
		end
	end
	if bottles == 1
		puts "One bottle of beer on the wall,"
		puts "One bottle of beer,"
		puts "Take one down, pass it around,"
		puts "Zero bottles of beer on the wall."
	end

end