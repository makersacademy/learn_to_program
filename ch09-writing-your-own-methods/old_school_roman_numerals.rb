def roman_numerial(x)
    x = x.to_i
	numerial = " "
	numerial = numerial + "M" * (x / 1000)
	numerial = numerial + "D" * ((x % 1000) / 500)
	numerial = numerial + "C" * ((x % 500) / 100)
	numerial = numerial + "L" * ((x % 100) / 50)
	numerial = numerial + "X" * ((x % 50) / 10)
	numerial = numerial + "V" * ((x % 10) / 5)
	numerial = numerial + "I" * ((x % 5) / 1)
	puts numerial
end

roman_numerial(876)