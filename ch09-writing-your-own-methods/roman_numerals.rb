def roman_numeral num
  thousand = (num / 1000)
  hundred = (num % 1000 / 100)
  ten = (num % 1000 / 10)
  one = (num % 10)

  romNum = "M" * thousand

if hundred == 9
  romNum = romNum + "CM"
elsif hundred == 4
  romNum = romNum + "CD"
else
romNum = romNum + 'D' * (num % 1000 / 500)
romNum = romNum + 'C' * (num % 500 / 100)
end

if ten == 9
  romNum = romNum + "XC"
elsif hundred == 4
  romNum = romNum + "XL"
else
romNum = romNum + 'L' * (num % 100 / 50)
romNum = romNum + 'X' * (num % 50 / 10)
end

if one == 9
  romNum = romNum + "IX"
elsif hundred == 4
  romNum = romNum + "IV"
else
romNum = romNum + 'V' * (num % 1000 / 500)
romNum = romNum + 'I' * (num % 500 / 100)
end

end
