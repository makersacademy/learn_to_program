def roman_numeral num

key = {
1000  => "M",
900   => "CM"
500   => "D",
400   => "CD"
100   => "C",
90    => "XC"
50    => "L",
40    => "XL"
10    => "X",
9     => "IX"
5     => "V",
4     => "IV"
1 	  => "I"
}

numerals = ""

key.each do |n, r|
	numeral += roman * (num/n)
	num = num % n
	end
	numerals
end