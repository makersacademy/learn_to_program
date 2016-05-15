def english_number number
	return "zero" if number == 0
    ones_words = ["", "one ", "two ", "three ", "four ", "five ", "six ", "seven ", "eight ", "nine ", "ten ", "eleven ", "twelve ", "thirteen ", "fourteen ", "fifteen ", "sixteen ", "seventeen ", "eighteen ", "nineteen "]
    tens_words = ["", "", "twenty ", "thirty ", "forty ", "fifty ", "sixty ", "seventy ", "eighty ", "ninety "]
    thousands_words = ["", "thousand ", "million ", "billion ", "trillion ", "quadrillion ", "quintillion ", "sextillion ", 'septillion ', 'octillion ', 'nonillion ', 'decillion ', 'undecillion ', 'duodecillion ', 'tredecillion ', 'quattuordecillion ', 'quindecillion ', 'sexdecillion ', 'septendecillion ', 'octodecillion ', 'novemdecillion ', 'vigintillion ']
    
    numbers = number.to_s.chars.map{|x| x.to_i}
    result = ""
    while numbers.count > 0
        hundreds = (numbers.count % 3 == 0) ? numbers.shift : 0
		tens = (numbers.count % 3 == 2) ? numbers.shift : 0
    	addition = ""
       	addition << ones_words[hundreds] + "hundred " if hundreds > 0
       	addition << tens_words[tens].strip + (numbers[0]==0 ? " " : "-") + ones_words[numbers.shift] if tens >=2
       	addition << ones_words[tens*10 + numbers.shift]  if tens < 2
	    result << addition + thousands_words[numbers.count / 3] unless addition == ""
	end
    result.strip
end