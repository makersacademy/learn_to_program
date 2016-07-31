def roman_numeral num

  str = ""

# 1000's:
  m = num / 1000
    str << "M" * m

# 100's:
  if num % 1000 / 100 == 9
    str << "CM"
  elsif num % 1000 / 100 == 4
    str << "CD"
  elsif num % 1000 / 500 == 1
    str << "D"
  else
    str << "C" * (num % 1000 / 100)
  end

# 10's:
  if num % 100 / 10 == 9
    str << "XC"
  elsif num % 100 / 10 == 4
    str << "XL"
  elsif num % 100 / 50 == 1
    str << "L"
  else
    str << "X" * (num % 100 / 10)
  end

# 1's:
  if num % 10  == 9
    str << "IX"
  elsif num % 10  == 4
    str << "IV"
  elsif num % 10 / 5 == 1
    str << "V"
  else
    str << "I" * (num % 10 / 10)
  end

  str
end

puts roman_numeral 3494
