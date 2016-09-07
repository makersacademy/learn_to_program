def roman_numeral num
  m = num / 1000
  c = num % 1000 / 100
  x = num % 100 / 10
  i = num % 10
  
  rnum = 'M'* m
  
  if c == 9
      rnum = rnum + 'CM'
  elsif c == 4
      rnum = rnum + 'CD'
  else
      rnum = rnum + 'D' * (num % 1000 / 500)
      rnum = rnum + 'C' * (num % 500 / 100)
  end      
  
  if x == 9
      rnum = rnum + 'XC'
  elsif x == 4
      rnum = rnum + 'XL'
  else
      rnum = rnum + 'L' * (num % 100 / 50)
      rnum = rnum + 'X' * (num % 50 / 10)
  end
  
  if i == 9
      rnum = rnum + 'IX'
  elsif i == 4
      rnum = rnum + 'IV'
  else
      rnum = rnum + 'V' * (num % 10 / 5)
      rnum = rnum + 'I' * (num % 5)
  end
  rnum
end