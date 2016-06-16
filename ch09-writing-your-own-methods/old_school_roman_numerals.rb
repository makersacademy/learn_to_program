def old_roman_numeral num

  if num >3000 || num <1
    puts "Please enter a number in between 1 and 3000"
  end

rom = []

rom << "M" * (num / 1000)
rom << "D" * (num % 1000 / 500)
rom << "C" * (num % 500 / 100)
rom << "L" * (num % 100 / 50)
rom << "X" * (num % 50 / 10)
rom << "V" * (num % 10 / 5)
rom << "I" * (num % 5 / 1)

rom.join.to_s

end
