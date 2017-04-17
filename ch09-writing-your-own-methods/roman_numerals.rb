def roman_numeral num
	output = ''

	output << 'M' * (num/1000)
	output << 'D' * (num%1000/500)
	output << 'C' * (num%1000%500/100)
	output << 'L' * (num%1000%500%100/50)
	output << 'X' * (num%1000%500%100%50/10)
	output << 'V' * (num%1000%500%100%50%10/5)
	output << 'I' * (num%1000%500%100%50%10%5/1)

	(num % 500).odd? ? output = output.sub(/DCCCC/, "CM") : output = output.sub(/CCCC/, "CD")
	(num % 50).odd?  ? output = output.sub(/CXXXX/, "XC") : output = output.sub(/XXXX/, "XL")
	(num % 10).odd?  ? output = output.sub(/VIIII/, "IX") : output = output.sub(/IIII/, "IV")
end

puts roman_numeral(2019)
