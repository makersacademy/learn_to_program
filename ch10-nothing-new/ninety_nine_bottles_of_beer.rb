beginning_num = 10
current_num = beginning_num

while current_num > 2
	puts english_number(current_num).capitalize + " bottles of beer on the wall" + 
		 english_number(current_num) + " bottles of beer!"
	current_num = current_num - 1
	puts "Take one down, pass it around, " + english_number(current_num) +
		 " bottles of beer on the wall!"
end

