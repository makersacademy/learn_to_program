def old_roman_numeral num
  number1 = "M" * (num/1000)
  number2 = number1 + "D" * (num % 1000 / 500)
  number3 = number2 + "C" * (num % 500 /  100)
  number4 = number3 + "L" * (num % 100/    50)
  number5 = number4 + "X" * (num % 50/     10)
  number6 = number5 + "V" * (num %10/       5)
  number7 = number6 + "I" * (num %5/        1)

  puts "Your roman numeral is #{number7}."

  end
