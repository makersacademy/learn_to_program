def english_number n

english = []

units = {
"quindecillion" 					=> 10 ** 48,
"quattuordecillion"				=> 10 ** 45,
"tredecillion"						=> 10 ** 42,
"duodecillion"						=> 10 ** 39,
"undecillion"							=> 10 ** 36,
"decillion"								=> 10 ** 33,
"nonillion"								=> 10 ** 30,
"octillion"								=> 10 ** 27,
"septillion"							=> 10 ** 24,
"sextillion"							=> 10 ** 21,
"quintillion"							=> 10 ** 18,
"quadrillion"							=> 10 ** 15,
"trillion"								=> 10 ** 12,
"billion"									=> 10 ** 9,
"million"									=> 10 ** 6,
"thousand"								=> 10 ** 3,
""												=> 1}

units.inject(n) do |num, (name, value)|
	unless num < value
		english << words(num / value)
		english << name
	end
	num - (value * (num / value))
end

english.compact.join(" ")

end




def words modulus

		ones = [	"one", "two", "three", "four", "five",
					"six", "seven", "eight", "nine"]

		tens = [	"ten", "twenty", "thirty", "fourty", "fifty", "sixty",
					"seventy", "eighty", "ninety"]

		teens =[	"eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen",
					"seventeen", "eighteen", "nineteen"]

string = []
a = modulus / 100
if a > 0 #hundreds
	string.push("#{ones[a-1]} hundred")
end
b = (modulus - a * 100) / 10
if b > 1
	string.push("#{tens[b-1]}")
end
c = modulus - ((a*100) + (b*10))
if ((c > 0) && (b == 1))
	string.push("#{teens[c-1]}")
elsif (((c > 0) && (b != 1))) && (b > 1)
	string[-1]<<("-#{ones[c-1]}")
elsif (((c > 0) && (b != 1)))
	string.push("#{ones[c-1]}")

end

string.join(' ')

end

puts english_number 109238745102938560129834709285360238475982374561034
english_number 256
english_number 444
puts english_number 3211
puts english_number 100
english_number 200
english_number 999
english_number 10
