def old_roman_numeral(num)
  # your code here
  thousands = num/1000
  hundreds = (num%1000)/100
  tens = (num%100)/10
  units = num%10
  output = []
	if thousands > 0
  	thousands.times do
  		output.push("M")
  	end
	end
	if hundreds > 0
		if hundreds > 4
			output.push("D")
			(hundreds - 5).times do
				output.push("C")
			end
		else
			hundreds.times do
				output.push("C")
			end
		end
	end
	if tens > 0
		if tens > 4
			output.push("L")
			(tens - 5).times do
				output.push("X")
			end
		else
			tens.times do
				output.push("X")
			end
		end
	end
	if units > 0
		if units > 4
			output.push("V")
			(units - 5).times do
				output.push("I")
			end
		else
			units.times do
				output.push("I")
			end
		end
	end
	output.join("")
	#puts "#{thousands.times{print "M"}}#{hundreds >=5 ? "D" << (hundreds - 5).times{print "C"} : hundreds.times{print "C"}}#{tens >=5 ? "L" << (tens -5).times{print "X"} : tens.times{print "X"}}#{units >=5 ? "V" << (units-5).times{print "I"} : units.times{print "I"}}"
end

