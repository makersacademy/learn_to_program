def old_roman_numeral num
  if num <= 0
    puts 'Please enter a positive integer'
  elsif num >= 5000
    puts 'Please enter a positive integer less than 5000'
  else
    roman = ""
    roman << "M" * (num / 1000)
    roman << "D" * (num % 1000 / 500)
    roman << "C" * (num % 500 / 100)
    roman << "L" * (num % 100 / 50)
    roman << "X" * (num % 50 / 10)
    roman << "V" * (num % 10 / 5)
    roman << "I" * (num % 5)
    return roman
  end
end
