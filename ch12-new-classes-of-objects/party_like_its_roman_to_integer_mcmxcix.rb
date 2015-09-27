def roman_numeral num
romansplit = Hash.new
romansplit['M'] = 1000
romansplit['D'] = 500
romansplit['C'] = 100
romansplit['L'] = 50
romansplit['X'] = 10
romansplit['IX'] = 9
romansplit['V'] = 5
romansplit['IV'] = 4
romansplit['I'] = 1

final_output = ""
romansplit.each do |string, int|
	unless num < int
		strcount = num/int
		num = num%int
		output = string * strcount
		final_output = final_output << output
	end
end
return final_output
end

def roman_to_integer roman
romansplit = Hash.new
romansplit['M'] = 1000
romansplit['CM'] = 900
romansplit['D'] = 500
romansplit['C'] = 100
romansplit['XC'] = 90
romansplit['L'] = 50
romansplit['X'] = 10
romansplit['IX'] = 9
romansplit['V'] = 5
romansplit['IV'] = 4
romansplit['I'] = 1
roman.upcase!
final_output = 0
len = roman.length
remover1 = "IV"
remover2 = "IX"
remover3 = "XC"
remover4 = "CM"

# remove 2 char roman (will mess up calculation)
if roman.include?(remover1)
	len -= 2
	final_output += 4
end
if roman.include?(remover2)
	len -= 2
	final_output += 9
end
if roman.include?(remover3)
	len -= 2
	final_output += 90
end
if roman.include?(remover4)
	len -= 2
	final_output += 900
end

# for the length of the string in question (now only 1 char roman numerals are considered)
# go through the text and identify the roman numerals and lookup against hash
len.times do |len|
	romansplit.each do |key, value|
		if roman[len] == key
			final_output += value
		end
	end
end
final_output
end
