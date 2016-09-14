def roman_numeral num
  r = ''
  r += 'M' * (num / 1000)
  r += num % 1000 > 899 ? 'CL' : 'D' * (num % 1000 / 500)
  r += num % 1000 > 899 ? '' : num % 500 > 449 ? 'CD' : 'C' * (num % 500/ 100)
  r += num % 100 > 89 ? 'XC' : 'L' * (num % 100 / 50)
  r += num % 100 > 89 ? '' : num % 50 > 39 ? 'XL' : 'X' * (num % 50 / 10)
  r += num % 10 > 8 ? 'IX' : 'V' * (num % 10 / 5)
  r += num % 10 > 8 ? '' : num % 5 > 3 ? 'IV' : 'I' * (num % 5)
  r
end