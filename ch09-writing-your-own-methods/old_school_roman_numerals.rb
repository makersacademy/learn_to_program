def old_roman_numeral num

  thousands = num / 1000 #det value in thousands place
  num -= thousands * 1000

  five_hundreds = num / 500 #det value in hundreds place
  num -= five_hundreds * 500

  hundreds = num / 100 #det value in hundreds place
  num -= hundreds * 100

  fiftys = num / 50 #det value in hundreds place
  num -= fiftys * 50

  tens = num / 10 #det value in tens place
  num -= tens * 10

  fives = num / 5 #det num of fives
  num -= fives * 5

  return 'M'*thousands + 'D'*five_hundreds + 'C'*hundreds + 'L'*fiftys + 'X'*tens + 'V'*fives + 'I'*num
  puts 'M'*thousands + 'D'*five_hundreds + 'C'*hundreds + 'L'*fiftys + 'X'*tens + 'V'*fives + 'I'*num
end
