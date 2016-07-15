def old_roman_numeral (num)

  romNum = ""

  romNum = romNum + 'M' * (num / 1000)
  romNum = romNum + 'D' * (num % 1000 / 500)
  romNum = romNum + 'C' * (num % 500 / 100)
  romNum = romNum + 'L' * (num % 100 / 50)
  romNum = romNum + 'X' * (num % 50 / 10)
  romNum = romNum + 'V' * (num % 10 / 5)
  romNum = romNum + 'I' * (num % 5 / 1)

  romNum

end
