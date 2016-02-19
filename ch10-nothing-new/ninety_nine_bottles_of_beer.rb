def english_number number

	sub_ten = [
		nil, "one", "two", "three", "four",
		"five", "six", "seven", "eight", "nine" ]

	teens = [
		"ten", "eleven", "twelve", "thirteen", "fourteen",
		"fifteen", "sixteen", "seventeen", "eighteen", "nineteen" ]

	tens = [
		nil, nil, "twenty", "thirty", "forty",
		"fifty", "sixty", "seventy", "eighty", "ninety" ]

	exp = {
		100 => "googol", 63 => "vigintillion", 60 => "novemdecillion", 
		57 => "octodecillion", 54 => "septendecillion", 51 => "sexdecillion", 
		48 => "quindecillion", 45 => "quattuordecillion", 42 => "tredecillion", 
		39 => "duodecillion", 36 => "undecillion", 33 => "decillion", 
		30 => "nonillion", 27 => "octillion", 24 => "septillion", 
		21 => "sextillion", 18 => "quintillion", 15 => "quadrillion", 
		12 => "trillion", 9 => "billion", 6 => "million", 
		3 => "thousand", 2 => "hundred", 0 => nil, 
	}

	number_word = []
	number_word_final = []
	number_rem = [number, nil]
	rec_number = number_rem

	return "zero" if number == 0

	while number_rem.length > 1
	
		exp.each do | key, value |
				num_buffer = rec_number.first / 10 ** key
				rec_number[0] = rec_number.first % 10 ** key
				if num_buffer > 0 && num_buffer <= 99 
					tens_word = tens[num_buffer / 10]
					num_buffer / 10 == 1 ? teens_word = teens[num_buffer % 10] : sub_ten_word = sub_ten[num_buffer % 10]
					num_buffer = [ tens_word, teens_word, sub_ten_word ].compact.join("-")
					number_word += [ num_buffer, value ]
				else
					number_rem << [ num_buffer, value ] if num_buffer > 0 
				end
		end

		number_word_final = number_word.flatten + [rec_number[1]] + number_word_final
		number_word = []
		rec_number = number_rem.pop
	end

	number_word_final.compact.flatten.join(" ")
end






num_bottle = 5

def beer_string num
	"#{english_number(num)} bottle#{num == 1 ? "":"s"}"
end

while num_bottle > 0
	bottles = beer_string num_bottle
	puts "#{bottles} of beer on the wall, #{bottles} of beer!".capitalize
	puts "Take one down, pass it around, #{num_bottle == 0 ? "no more bottles" : (beer_string num_bottle -= 1)} of beer on the wall!"
end