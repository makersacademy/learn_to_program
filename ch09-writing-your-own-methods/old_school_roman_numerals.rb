def old_roman_numeral number

one_nums = {1000 => "M",
	500 => "D",
	100 => "C",
	50 => "L",
	10 => "X",
	5 => "V",
	1 => "I"
}

to_return = ""

one_nums.each do |k, v|
	to_return << v * (number / k) 
	number = (number % k)
end
to_return


	# until number - k = 0 keep minusing the number by the keys and printing the values 

#until number == 0
#	number - one_nums a really quick amount of times 






#	number =< 1 && number > 5
#		one_nums[1] * number
#
#	if number <= 5
#		number.
  # your code here
end


p old_roman_numeral 4