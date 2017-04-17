def roman_numeral num
  		roman_numerals  = ["M", "D", "C", "L", "X", "V", "I"]
		divisors = [1000, 500, 100, 50, 10, 5, 1]
		answer = []
		divisors.each_with_index {|x, i|  answer << roman_numerals[i] * (num % divisors[i > 0 ? i -1 : 0] / x) }
	if num >= 1000
		answer.unshift("M" * (num / 1000))
		answer.join.gsub("IIII", "IV").gsub("VIIII", "IX").gsub("VIV", "IX")
	else 
		answer.join.gsub("IIII", "IV").gsub("VIIII", "IX").gsub("VIV", "IX")
	end
end
