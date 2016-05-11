def roman_numeral num
  numeral = ''

	numeral << 'M' * (num / 1000)
	numeral << 'CM' * (num % 1000 / 900)
	numeral << 'D' * (num % 900 / 500)
	numeral << 'CD' * (num % 500 / 400)
	numeral << 'C' * (num % 400 / 100)
	numeral << 'XC' * (num % 100 / 90)
	numeral << 'L' * (num % 90 / 50)
	numeral << 'XL' * (num % 50 / 40)
	numeral << 'X' * (num % 40 / 10)
	numeral << 'IX' * (num % 10 / 9)
	numeral << 'V' * (num % 9 / 5)
	numeral << 'IV' * (num % 5 / 4)
	numeral << 'I' * (num % 4 / 1)
	numeral
end