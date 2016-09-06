def numeral num
  thousand = num / 1000
  hundret = (num % 1000 /100)
  ten = (num % 100/ 10)
  one = (num % 10)

  rn = 'M' * thousand
  if hundret == 9
  rn = rn + 'CM'
  elsif hundret == 4
  rn = rn + "CD"
  else
    rn = rn + 'D' * (num % 1000/ 500)
    rn = rn + 'C' * (num % 500/ 100)
  end
  if ten == 9
    rn = rn + 'XC'
  elsif ten == 4
    rn = rn + "XL"
  else
    rn = rn + 'L' * (num % 100/ 50)
    rn = rn + 'X' * (num % 50/ 10)
  end
  if one == 9
    rn = rn + 'IX'
  elsif one == 4
     rn = rn + 'IV'
  else
    rn = rn + 'V' * (num % 10/ 5)
    rn = rn + 'I' * (num % 5/ 1)
  end
  rn
end

puts(numeral(1994))
