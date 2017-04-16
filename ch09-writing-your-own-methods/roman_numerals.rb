def roman_numeral num
  integer = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  numerals = ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I']
  roman_num = ''
  i = 0

  while i <= 12
    while num >= integer[i]
      num = num - integer[i]
      roman_num = roman_num + numerals[i]
    end
    i = i + 1
  end
  roman_num
end
