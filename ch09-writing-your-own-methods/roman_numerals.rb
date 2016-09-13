def roman_numeral num
  thousand = "M" * (num / 1000)
  five_hundred = "D" * ((num % 1000) / 500)
  hundred = "C" * ((num % 500) / 100)
  fifty = "L" * ((num % 100) / 50)
  ten = "X" * (((num % 100) % 50) / 10)
  five = "V" * ((((num % 100) % 50) % 10) / 5)
  one = "I" * (((((num % 100) % 50) % 10) % 5) / 1)

  if five_hundred == "D" && hundred == "CCCC"
    five_hundred = "CM"
    hundred = ""
  elsif hundred == "CCCC"
    hundred = "CD"
  end

  if fifty == "L" && ten == "XXXX"
    fifty = "XC"
    ten = ""
  elsif ten == "XXXX"
    ten = "XL"
  end

  if one == "IIII" && five == "V"
      five = "IX"
      one = ""
  elsif one == "IIII"
      one = "IV"
  end

  return thousand + five_hundred + hundred + fifty + ten + five + one

end

puts roman_numeral 2449
