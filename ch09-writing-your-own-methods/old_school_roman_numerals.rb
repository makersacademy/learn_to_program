def old_roman_numeral num

key = {
1000  => "M",
500   => "D",
100   => "C",
50    => "L",
10    => "X",
5     => "V",
1 	  => "I",
}

numerals = ""

key.each do |n, r|
	numerals += r * (num/n)
	num = num % n
	end
	numerals
end


#For reference, these are the values of the letters used:
#I = 1 V = 5 X = 10 L = 50
#C = 100 D = 500 M = 1000