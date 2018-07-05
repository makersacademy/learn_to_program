def old_roman_numeral num

  roman_array = []
  roman_array << 'M' * (num / 1000)
  roman_array << 'D' * (num % 1000 / 500)
  roman_array << 'C' * (num % 500 / 100)
  roman_array << 'L' * (num % 100 / 50)
  roman_array << 'X' * (num % 50 / 10)
  roman_array << 'V' * (num % 10 / 5)
  roman_array << 'I' * (num % 5 / 1)
  return roman_array.join

end
