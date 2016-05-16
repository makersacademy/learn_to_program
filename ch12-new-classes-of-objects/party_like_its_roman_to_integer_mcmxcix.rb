def roman_to_integer roman
	input = roman.upcase.split(//)
	output = 0	
	input.length.times.with_index do |x, i|
		if input[i] == "M"
			output += 1000
		elsif input[i] == "D" 
			output += 500
		elsif input[i] == "C"
			if input[i+1] == "M" || input[i+1] == "D" 
				output -= 100
			else output += 100 
			end
		elsif input[i] == "L" 
			output += 50
		elsif input[i] == "X"
			if input[i+1] == "C" || input [i+1] == "L"
				output -= 10
			else output += 10 
			end
		elsif input[i] == "V" 
			output += 5
		elsif input[i] == "I"
			if input[i+1] == "X" || input[i+1] == "V" 
				output -= 1
			else output += 1
			end
		end
	end
	return output
end
