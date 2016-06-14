def roman_numeral(num)

  thousands = (num / 1000)
  hundreds = ((num % 1000) / 100)
  tens = ((num % 100) / 10)
  ones = (num % 10)

  if thousands > 0
    output = "#{"M" * thousands}"
  end

  if hundreds == 9
    output = "#{output}CM"
  elsif hundreds == 4
    output = "#{output}CD"
  elsif hundreds >= 5
    output = "#{output}D"
    if hundreds % 5 != 0
      output = "#{output}#{"C" * (hundreds % 5)}"
    end
  else
    output = "#{output}#{"C" * hundreds}"
  end

  if tens == 9
    output = "#{output}XC"
  elsif tens == 4
    output = "#{output}XL"
  elsif tens >= 5
    output = "#{output}L"
    if tens % 5 != 0
      output = "#{output}#{"X" * (tens % 5)}"
    end
  else
    output = "#{output}#{"X" * tens}"
  end

  if ones == 9
    output = "#{output}IX"
  elsif ones == 4
    output = "#{output}IV"
  elsif ones >= 5
    output = "#{output}V"
    if ones % 5 != 0
      output = "#{output}#{"I" * (ones % 5)}"
    end
  else
    output = "#{output}#{"I" * ones}"
  end

  output

end
