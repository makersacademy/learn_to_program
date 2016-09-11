def roman_numeral num
  #changes only to 4 and 9 in each tier

  newrom = ""

  thou = (num /1000)
  hund = (num %1000 / 100)
  ten = (num % 100 /10)
  one = (num % 10)

  newrom = 'M' * thou

  if hund == 9
    newrom = newrom + 'CM'
  elsif hund == 4
    newrom = newrom + 'CD'
  else
  newrom = newrom + 'D' * (num % 1000 / 500)
  newrom = newrom + 'C' * (num % 500/ 100)
  end

  if ten == 9
    newrom = newrom + 'XC'
  elsif ten == 4
    newrom = newrom + 'XL'
  else
    newrom = newrom + 'L' * (num % 100 / 50)
    newrom = newrom + 'X' * (num % 50 / 10)
  end

  if one == 9
    newrom = newrom + 'IX'
  elsif one == 4
    newrom = newrom + 'IV'
  else
    newrom = newrom + 'V' * (num % 10 / 5)
    newrom = newrom + 'I' * (num % 5 / 1)
  end
  newrom
end

puts roman_numeral 1992
