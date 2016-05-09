def roman_numeral num
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