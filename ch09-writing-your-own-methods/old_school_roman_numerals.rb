def old_roman_numeral num
  rnum = ''
  rnum = rnum + 'M' * (num / 1000)
  rnum = rnum + 'D' * (num % 1000 / 500)
  rnum = rnum + 'C' * (num % 500 / 100)
  rnum = rnum + 'L' * (num % 100 / 50)
  rnum = rnum + 'X' * (num % 50 / 10)
  rnum = rnum + 'V' * (num % 10 / 5)
  rnum = rnum + 'I' * (num % 5 / 1)
  rnum
end
