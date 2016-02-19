def old_roman_numeral num
  thousands = num / 1000
  remainder = num % 1000

  five_hundreds = remainder / 500
  hundreds = (remainder - (500 * five_hundreds)) / 100
  remainder = remainder % 100

  fifties = remainder / 50
  tens = (remainder - (50 * fifties)) / 10
  remainder = remainder % 10

  fives = remainder / 5
  singles = remainder % 5

  return "M" * thousands+"D"*five_hundreds + "C" * hundreds+("L" * fifties) + ("X" * tens)+("V" * fives) + ("I" * singles)
end
