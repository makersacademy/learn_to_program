#correct

def roman_numeral(num)
  roman = ""
  roman << "M" * (num / 1000)
  if num.to_s[-3] == "9"
      roman << "CM"
  elsif  num.to_s[-3] == "4"
      roman << "CD"
  else
  roman << "D" * ((num % 1000) / 500) && roman << "C" * ((num % 500) / 100)
  end
  if num.to_s[-2] == "9"
      roman << "XC"
  elsif num.to_s[-2] == "4"
      roman << "XL"
  else
  roman << "L" * ((num % 100) / 50) && roman << "X" * ((num % 50) / 10)
  end
  if num.to_s[-1] == "9"
      roman << "IX"
  elsif num.to_s[-1] == "4"
      roman << "IV"
  else
  roman << "V" * ((num % 10) / 5) && roman << "I" * ((num % 5) / 1)
  end
end

