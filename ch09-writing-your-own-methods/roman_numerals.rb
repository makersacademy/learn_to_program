def solution (num)
  thousand = (num / 1000)
  hundred = (num % 1000 / 100)
  ten = (num % 100 / 10)
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
elsif ten == 4
  romNum = romNum + "XL"
else
romNum = romNum + 'L' * (num % 100 / 50)
romNum = romNum + 'X' * (num % 50 / 10)
end

if one == 9
  romNum = romNum + "IX"
elsif one == 4
  romNum = romNum + "IV"
else
romNum = romNum + 'V' * (num % 10 / 5)
romNum = romNum + 'I' * (num % 5 / 1)
end

return romNum

end
