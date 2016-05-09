def old_roman_numeral num
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
