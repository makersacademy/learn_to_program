def roman_numeral(num)
  # your code here
  thousands = num / 1000
  hundreds = (num%1000)/100
  tens = (num%100)/10
  units = num%10
	output=[]
	if thousands > 0
		thousands.times do
			output.push("M")
		end
	end
	if hundreds > 0
		if hundreds > 7
			(10 - hundreds).times do
				output.push("C")
			end
			output.push("M")
		elsif hundreds > 4
			output.push("D")
			(hundreds - 5).times do
				output.push("C")
			end
		elsif hundreds == 4
			output.push("CD")
		else
			hundreds.times do
				output.push("C")
			end
		end
	end
	if tens > 0
		if tens > 7
			(10-tens).times do
				output.push("X")
			end
			output.push("C")
		elsif tens > 4
			output.push("L")
			(tens-5).times do
				output.push("X")
			end
		elsif tens ==4
			output.push("XL")
		else
			tens.times do
				output.push("X")
			end
		end
	end
	if units > 0
		if units == 9
			output.push("IX")
		elsif units > 4
			output.push("V")
			(units-5).times do
				output.push("I")
			end
		elsif units == 4
			output.push("IV")
		else
			units.times do
				output.push("I")
			end
		end
	end	
	output.join("")
end


