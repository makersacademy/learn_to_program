=begin
Number Ref:
I = 1, V = 5, X = 10, L = 50, C = 100,
D = 500, M = 1000
=end

def roman_numeral num

  thousands = (num / 1000)
  hundreds  = (num % 1000 / 100)
  tens      = (num % 100 / 10)
  ones      = (num % 10 )

  roman_numeral = 'M' * thousands

  if hundreds == 9
    roman_numeral = roman_numeral + 'CM'
  elsif hundreds == 4
    roman_numeral = roman_numeral + 'CD'
  else
    roman_numeral = roman_numeral + 'D' * (num % 1000 / 500)
    roman_numeral = roman_numeral + 'C' * (num % 500 / 100)
  end

  if tens == 9
    roman_numeral = roman_numeral + 'XC'
  elsif tens == 4
    roman_numeral = roman_numeral + 'XL'
  else
    roman_numeral = roman_numeral + 'L' * (num % 100 / 50)
    roman_numeral = roman_numeral + 'X' * (num % 50 / 10)
  end

  if ones == 9
    roman_numeral = roman_numeral + 'IX'
  elsif ones == 4
    roman_numeral = roman_numeral + 'IV'
  else
    roman_numeral = roman_numeral + 'V' * (num % 10 / 5)
    roman_numeral = roman_numeral + 'I' * (num % 5 / 1)
  end

  roman_numeral
end

puts roman_numeral 9
