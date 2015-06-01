def old_roman_numeral num
  integer = [1000, 500, 100, 50, 10, 5, 1]
  numerals = ['M', 'D', 'C', 'L', 'X', 'V', 'I']
  roman_num = ''
  i = 0

  while i <= 6
    while num >= integer[i]
      num = num - integer[i]
      roman_num = roman_num + numerals[i]
    end
    i = i + 1
  end
  roman_num
end
