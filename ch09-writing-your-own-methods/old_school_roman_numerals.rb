  def old_roman_numeral (arg)
    if arg <= 0
    return "fck you"
    else
      roman_number = ""
      roman_number << "M" * (arg / 1000)
      roman_number << "D" * (arg % 1000 / 500)
      roman_number << "C" * (arg % 500 / 100)
      roman_number << "L" * (arg % 100 / 50)
      roman_number << "X" * (arg % 50 / 10)
      roman_number << "V" * (arg % 10 / 5)
      roman_number << "I" * (arg % 5 / 1)
      roman_number
      end
  end
