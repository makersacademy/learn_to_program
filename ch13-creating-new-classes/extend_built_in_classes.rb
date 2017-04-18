class Integer

def to_roman
num = self
numeral = Hash.new(0)
if num == 0 
	return 0
else
	until num - 1000 < 0
	numeral["M"] += 1
	num -= 1000
	end

	until num - 500 < 0
	numeral["D"] += 1
	num -= 500
	end

	until num - 100 < 0
	numeral["C"] += 1
	num -= 100
	end

	until num - 50 < 0
	numeral["L"] += 1
	num -= 50
	end

	until num - 10 < 0
	numeral["X"] += 1
	num -= 10
	end

	until num - 5 < 0
	numeral["V"] += 1
	num -= 5
	end

	until num - 1 < 0
	numeral["I"] += 1
	num -= 1
	end
end
output = ""
numeral.each {|numeral,value| value.times do output << "#{numeral}" end }
return output
end

def roman_numeral
num = self
numeral = Hash.new(0)
if num == 0 
	return 0
else
	until num - 900 < 0
		if ((num - 900) >= 0) && (num < 1000)
			numeral["CM"] += 1
			num -= 900
		else
		numeral["M"] += 1
		num -= 1000
		end
	end

	until num - 400 < 0
		if ((num - 400) >= 0) && (num < 500)
		numeral["CD"] += 1
		num -= 400
		else
		numeral["D"] += 1
		num -= 500
		end
	end

	until num - 90 < 0
		if ((num - 90) >= 0) && (num < 100)
		numeral["XC"] += 1
		num -= 90
		else
		numeral["C"] += 1
		num -= 100
		end
	end

	until num - 40 < 0
			if ((num - 40) >= 0) && (num < 50)
		numeral["XL"] += 1
		num -= 40
		else
		numeral["L"] += 1
		num -= 50
		end
	end

	until num - 9 < 0
		if ((num - 9) >= 0) && (num < 10)
		numeral["IX"] += 1
		num -= 9
		else
		numeral["X"] += 1
		num -= 10
		end
	end

	until num - 4 < 0
		if ((num - 4) >= 0) && (num < 5)
		numeral["IV"] += 1
		num -= 4
		else
		numeral["V"] += 1
		num -= 5
		end
	end

	until num - 1 < 0
	numeral["I"] += 1
	num -= 1
	end
end
output = ""
numeral.each {|numeral,value| value.times do output << "#{numeral}" end }
return output
end

def factorial
if self <= 1
1
else
self * (self-1).factorial
end
end

end



class String
	def roman_to_integer
	roman = self
	roman.upcase!
	possible_chars = ["C","M","D","X","L","I","V"]
	if roman.chars.all? {|char| possible_chars.any? {|compar| char.upcase == compar} }
		int_count = 0
		until roman == ""
			case 
			when roman.upcase.include?("CM")
			int_count += 900
			roman.slice! "CM"
			when roman.upcase.include?("CD")
			int_count += 400
			roman.slice! "CD"
			when roman.upcase.include?("XC")
			int_count += 90
			roman.slice! "XC"
			when roman.upcase.include?("XL")
			int_count += 40
			roman.slice! "XL"
			when roman.upcase.include?("IX")
			int_count += 9
			roman.slice! "IX"
			when roman.upcase.include?("IV")
			int_count += 4
			roman.slice! "IV"
			when roman.upcase.include?("M")
			int_count += 1000
			roman.sub!("M","")
			when roman.upcase.include?("D")
			int_count += 500
			roman.sub!("D","")
			when roman.upcase.include?("C")
			int_count += 100
			roman.sub!("C","")
			when roman.upcase.include?("L")
			int_count += 50
			roman.sub!("L","")
			when roman.upcase.include?("X")
			int_count += 10
			roman.sub!("X","")
			when roman.upcase.include?("V")
			int_count += 5
			roman.sub!("V","")
			when roman.upcase.include?("I")
			int_count += 1
			roman.sub!("I","")
			end
			print 
		end
	else
	"Please only use roman numerals"
	end
	return int_count
end
end