def roman_numeral num
	input = num.to_s.split(//)
	output = ""
	if input.length >= 4
		((num/1000).abs).times do
			output << "M"
		end
	end
	if ((num/500).abs).odd? && input.length >= 3
		output << "D"
	end
	if input.length >= 3 && input[input.length-3].to_i >= 6
		(input[input.length-3].to_i-5).times do
			output << "C"
		end
	elsif input.length >= 3 && input[input.length-3].to_i <= 4
		input[input.length-3].to_i.times do
                        output << "C"
                end
	end
	if input.length >= 2 && ((num/50).abs).odd?
                output << "L"
	end
	if input.length >= 2 && input[input.length-2].to_i >= 6
                (input[input.length-2].to_i-5).times do
			 output << "X"
		end
        elsif input.length >= 2 && input[input.length-2].to_i <= 4
                input[input.length-2].to_i.times do
			output << "X"
        	end
	end
	if input.length >= 1 && (num/5).odd? && input[input.length-1].to_i != 9
                output << "V"
        end
	if input.length >= 1 && input[input.length-1].to_i == 9
		output << "IX"
	elsif input.length >= 1 && input[input.length-1].to_i == 4
                output << "IV"  	
	elsif input.length >= 1 && input[input.length-1].to_i >= 6
                (input[input.length-1].to_i-5).times do
			output << "I"
        	end
	elsif input.length >= 1 && input[input.length-1].to_i <= 3
               input[input.length-1].to_i.times do
			output << "I"
        	end
	end
	return output
end
