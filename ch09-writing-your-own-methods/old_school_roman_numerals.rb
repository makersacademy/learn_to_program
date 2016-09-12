=begin
Number Ref:
I = 1, V = 5, X = 10, L = 50, C = 100,
D = 500, M = 1000
=end

def old_roman_numeral num

roman_numeral = ''

roman_numeral = roman_numeral + 'M' * (num / 1000)

roman_numeral = roman_numeral + 'D' * (num % 1000 / 500)

roman_numeral = roman_numeral + 'C' * (num % 500 / 100)

roman_numeral = roman_numeral + 'L' * (num % 100 / 50)

roman_numeral = roman_numeral + 'X' * (num % 50 / 10)

roman_numeral = roman_numeral + 'V' * (num % 10 / 5)

roman_numeral = roman_numeral + 'I' * (num % 5 / 1)

roman_numeral
end

puts old_roman_numeral rand(0..3000)
