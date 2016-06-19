def roman_numeral num
  thousand = (num / 1000)
  hundred = (num % 1000 / 100)
  ten = (num % 1000 / 10)
  one = (num % 10)

  romNum = "M" * thousand

when hundred == 9
  romNum = romNum + "CM"
when hundred == 4
  romNum = romNum + "CD"
else
romNum = romNum + 'D' * (num % 1000 / 500)
romNum = romNum + 'C' * (num % 500 / 100)

when ten == 9
  romNum = romNum + "XC"
when hundred == 4
  romNum = romNum + "XL"
else
romNum = romNum + 'L' * (num % 100 / 50)
romNum = romNum + 'X' * (num % 50 / 10)

when one == 9
  romNum = romNum + "IX"
when hundred == 4
  romNum = romNum + "IV"
else
romNum = romNum + 'V' * (num % 1000 / 500)
romNum = romNum + 'I' * (num % 500 / 100)

end

puts romNum (2016)
