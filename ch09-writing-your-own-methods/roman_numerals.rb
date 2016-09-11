def roman_numeral num
  thousands = num / 1000 #det value in thousands place
  num -= thousands * 1000
  thousands_out = 'M'*thousands

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


  if  five_hundreds * 500 + hundreds * 100 == 900
    hundreds_out = 'CM'
  elsif five_hundreds * 100 + hundreds * 100 == 400
    hundreds_out = 'CD'
  else
    hundreds_out = 'D'*five_hundreds + 'C'*hundreds
  end

  if tens * 10 + fiftys * 50 == 90
    tens_out = 'XC'
  elsif tens * 10 + fiftys * 50 == 40
    tens_out = 'XL'
  else
    tens_out = 'L'*fiftys + 'X'*tens
  end

  if num + fives * 5 == 9
    ones_out = 'IX'
  elsif num + fives * 5 == 4
    ones_out = 'IV'
  else
    ones_out = 'V'*fives + 'I'*num
  end

#  puts thousands_out + hundreds_out + tens_out + ones_out
  thousands_out + hundreds_out + tens_out + ones_out

end

#puts 'Num?'
#torome = gets.chomp.to_i
#roman_numeral torome
