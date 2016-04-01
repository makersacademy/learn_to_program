=begin
trying to do it with hash but errrr keeping on getting syntax errors will try again next one dunno if due to .each or : siggggh
def old_roman_numeral num
  roman_numbers = {
    1000: "M",
     500: "D",
     100: "C",
      50: "L",
      10: "X",
       5: "V",
       1: "I",
  }
  roman_str = ''
  roman_numbers.each
end
=end
def old_roman_numeral num 
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
