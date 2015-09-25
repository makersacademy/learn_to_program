$LOAD_PATH << '.'

require 'english_number.rb'

startBottles = 9999

str1 = ' bottles of beer on the wall, '
str2 = ' bottles of beer.'
str3 = 'Take one down and pass it around, '
str4 = ' bottles of beer on the wall.'
str5 = 'no more'
str6 = 'Go to the store and buy some more, '
str7 = ' bottle of beer on the wall.'
str8 = ' bottle of beer on the wall, '
str9 = ' bottle of beer.'

numBottles = startBottles

while numBottles > 0

	bottlesStr = english_number numBottles
	
	if numBottles > 1
		puts bottlesStr.capitalize + str1 + bottlesStr + str2	
	elsif numBottles == 1
		puts bottlesStr.capitalize + str8 + bottlesStr + str9
	end
	
	numBottles -= 1

	bottlesStr = english_number numBottles
	
	if numBottles > 1
		puts str3 + bottlesStr + str4
	elsif numBottles == 1
		puts str3 + bottlesStr + str7
	elsif numBottles == 0
		puts str3 + str5 + str4
	end

end

puts(str5.capitalize + str1 + str5 + str2)

bottlesStr = english_number startBottles

puts(str6 + bottlesStr + str4)