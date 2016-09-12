def roman_numeral num
  while num.to_i <= 3000
		# split number into an array
		array = num.to_s.split(//).map { |x| x.to_i }
		result =[]
		# array has length of 4
		until array.length == 4
		    array.unshift(0)
		end
		# 1000s of number
		if array[-4] < 4
				number = array[-4]
				number.times { result << "M" }
		end
		# 100s of number
		if array[-3] < 4
				number = array[-3]
				number.times { result << "C" }
		elsif array[-3] == 4
				number = array[-3]
				result << "CD"
		elsif array[-3] == 6
				number = array[-3]
				result << "DC"
		elsif array[-3] == 9
				number = array[-3]
				result << "CM"
		else
				number = array[-3]
				result << "D"
				(number-5).times { result << "C" }
		end
		# 10s of number
		if array[-2] < 4
				number = array[-2]
				number.times { result << "X" }
		elsif array[-2] == 4
				number = array[-2]
				result << "XL"
		elsif array[-2] == 6
				number = array[-2]
				result << "LX"
		elsif array[-2] == 9
				number = array[-2]
				result << "XC"
		else
				number = array[-2]
				result << "L"
				(number-5).times { result << "X" }
		end
		# single digits of number
		if array[-1] < 4
				number = array[-1]
				number.times { result << "I" }
		elsif array[-1] == 4
				number = array[-1]
				result << "IV"
		elsif array[-1] == 6
				number = array[-1]
				result << "VI"
		elsif array[-1] == 9
				number = array[-1]
				result << "IX"
		else
				number = array[-1]
				result << "V"
				(number-5).times { result << "I" }
		end
		# return number in roman numerals
    	return result.join("")
	end
	puts "Number must be greater than 3000."
	exit
end
