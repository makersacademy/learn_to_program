def roman_numeral num
  thous = (num / 1000)
  hunds = (num % 1000 / 100)
  tens = (num % 100 / 10)
  ones = (num % 10)

  string = "M" * thous

  if hunds == 9
  	string << "CM"
  elsif hunds == 4
  	string << "CD"
  else
  	string << "D" * (num % 1000 / 500)
  	string << "C" * (num % 500 / 100)
  end

  if tens == 9
  	string << "XC"
  elsif tens == 4
  	string << "XL"
  else
  	string << "L" * (num % 100 / 50)
  	string << "X" * (num % 50 / 10)
  end

  if ones == 9
  	string << "IX"
  elsif ones == 4
  	string << "IV"
  else
  	string << "V" * (num % 10 / 5)
  	string << "I" * (num % 5 / 1)
  end

  return string
end