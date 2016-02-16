def english_number number
  return "Please enter a positive number" if number < 0
  return "zero" if number == 0
  num_string = ""

  ones_list = %w(zero one two three four five six seven eight nine ten)
  teens_list = %w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
  tens_list = %w(zero ten twenty thirty fourty fifty sixty seventy eighty ninety)

  thousands = number % 1000000 / 1000
  hundreds = number % 1000 / 100
  teens = number % 100
  tens = number % 1000 % 100 / 10
  ones = number % 1000 % 100 % 10

  if thousands == 0
    num_string = ""
  else
    num_string = "#{ones_list[thousands]} thousand"
    num_string += " " if number % 1000 != 0
  end

  if hundreds == 0
    num_string += ""
  else
    num_string += "#{ones_list[hundreds]} hundred"
    num_string += " " if number % 100 != 0
  end

  if tens == 0
    num_string += ""
  elsif teens >= 10 && teens < 20
    return num_string += "#{teens_list[teens-10]}"
  else
    num_string += "#{tens_list[tens]}"
    num_string += "-" if number % 10 != 0
  end

  if ones == 0
    num_string += ""
  else
    num_string += "#{ones_list[ones]}"
  end
end

p english_number 9999
