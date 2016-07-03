def old_roman_numeral(x)
    x = x.to_i
	numerial = ""
	numerial = numerial + "M" * (x / 1000)
	numerial = numerial + "D" * ((x % 1000) / 500)
	numerial = numerial + "C" * ((x % 500) / 100)
	numerial = numerial + "L" * ((x % 100) / 50)
	numerial = numerial + "X" * ((x % 50) / 10)
	numerial = numerial + "V" * ((x % 10) / 5)
	numerial = numerial + "I" * ((x % 5) / 1)
	numerial
end

puts old_roman_numeral(9987)
