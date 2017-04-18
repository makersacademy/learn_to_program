def roman_to_integer roman
  # your code here
  roman = roman.upcase
	return "invalid roman numeral" if roman.index(/[^MDCLXVI]/) != nil 
	
	total = 0
	temp = 0

	arr = roman.split(//)

	arr.each_with_index do |value, index|
		if value == "M" 
			total += 1000
		elsif value == "D"
			total += 500
		elsif value == "L"
			total += 50
		elsif value == "V"
			total += 5
		elsif value == "C"
			if value == arr[index+1]
				temp += 100
			elsif (arr[index+1] == "L" || arr[index+1] == "X" || arr[index+1] == "V" || arr[index+1] == "I" || index+1 == arr.length)
				temp += 100
				total += temp
				temp = 0
			else
				temp += 100
				total -= temp
				temp = 0
			end
		elsif value == "X"
			if value == arr[index+1]
				temp += 10
			elsif (arr[index+1] == "V" || arr[index+1] == "I" || index+1 == arr.length)
				temp += 10
				total += temp
				temp = 0
			else
				temp += 10
				total -= temp
				temp = 0
			end
		elsif value == "I"
			if (value == arr[index+1])
				temp += 1
			elsif  (index+1 == arr.length)
				temp += 1
				total += temp
				temp = 0
			else
				temp += 1
				total -= temp
				temp = 0
			end
		else
			return "error"
		end	
	end

	total
end
