def old_roman_numeral num

  $output = ""
  $remainder = num

  numerals = {
    "M" => 1000,
    "D" => 500,
    "C" => 100,
    "L" => 50,
    "X" => 10,
    "V" => 5,
    "I" => 1
  }

  def check_output roman_letter, value
    if $remainder >= value
      factor = $remainder / value
      $remainder -= factor * value
      $output << roman_letter * factor
    end
  end

  numerals.each { |roman_letter, value| check_output roman_letter, value}

  $output

end
