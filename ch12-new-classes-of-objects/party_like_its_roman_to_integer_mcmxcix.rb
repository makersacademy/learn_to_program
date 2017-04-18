def roman_to_integer num
hash = {
"M" => 1000, 
"D" => 500,
"C" => 100, 
"L" => 50, 
"X" => 10,
"V" => 5, 
"I" => 1, 
}

letters = num.upcase.split("")

index = 0
total = 0
previous = 0
until index == num.length
	number = hash[letters[index]]
	if number > previous
	 total += number - previous * 2
	 previous = number - previous
	 index += 1
    else
	 total += number
	 previous = number
	 index += 1
    end
end
total
end
