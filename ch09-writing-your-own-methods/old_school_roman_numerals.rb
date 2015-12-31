def old_roman_numeral num
	roman_numerals  = ["M", "D", "C", "L", "X", "V", "I"]
	divisors = [1000, 500, 100, 50, 10, 5, 1]
	answer = []
	divisors.each_with_index {|x, i|  answer << roman_numerals[i] * (num % divisors[i > 0 ? i -1 : 0] / x) }
	puts answer.join
end

old_roman_numeral 1999

