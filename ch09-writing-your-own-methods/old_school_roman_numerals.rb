def old_roman_numeral num
  if num >= 0 && num <= 3000
    remaining = num
    result = ""

    result += "M" * (num / 1000)
    result += "D" * (num % 1000 / 500)
    result += "C" * (num % 500 / 100)
    result += "L" * (num % 100 / 50)
    result += "X" * (num % 50 / 10)
    result += "V" * (num % 10 / 5)
    result += "I" * (num % 5 / 1)

  else
    puts "Please enter a value between 0 and 3000"
  end

  result
end
