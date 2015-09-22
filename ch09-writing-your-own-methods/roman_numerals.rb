def roman_numeral num
	 roman = ''
	 roman = roman + 'M' * (num / 1000)
	 roman = roman + 'D' * (num % 1000 / 500)
	 roman = roman + 'C' * (num % 500 / 100)
	 roman = roman + 'L' * (num % 100 / 50)
	 roman = roman + 'X' * (num % 50 / 10)
	 roman = roman + 'V' * (num % 10 / 5)
	 roman = roman + 'I' * (num % 5 / 1)
	 roman
end

number = roman_numeral(54)

if number.include? 'VIIII'
	puts number.gsub!('VIIII', 'IX')
elsif number.include? 'IIII'
	puts number.gsub!('IIII', 'IV')
else
	puts number
end

# 16) roman numerals translates 519 to DXIX
#      Failure/Error: expect(roman_numeral(i+500)).to eq numeral

#        expected: "DXIX"
#             got: "DXVIIII"