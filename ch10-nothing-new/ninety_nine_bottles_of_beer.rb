require '~/Desktop/Week_3_Projects/learn_to_program/ch10-nothing-new/english_number.rb'

def beer_song(n)

	n = 0 if n < 0

	while n > 2 # until n == 2 do the following code:
		puts "#{english_number(n).capitalize} bottles of beer on the wall,"
		puts "#{english_number(n).capitalize} bottles of beer,"
		puts "Take one down and pass it around,"
		puts "#{english_number(n - 1).capitalize} bottles of beer on the wall."
		n -= 1 # every time the code loops, the new value of n = n - 1, the code will stop when n == 1
	end

	if n == 2
		puts "Two bottles of beer on the wall,"
		puts "Two bottles of beer,"
		puts "Take one down, pass it around,"
		puts "One bottle of beer on the wall."
	end

	if n >= 1
		puts "One bottle of beer on the wall,"
		puts "One bottle of beer,"
		puts "Take one down, pass it around,"
		puts "Zero bottles of beer on the wall."
	end

end

beer_song(8)