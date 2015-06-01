def old_roman_numeral(n)
  @result = ""
  @remaining = n
  numeral_list = {
    "M" => 1000,
    "D" => 500,
    "C" => 100,
    "L" => 50,
    "X" => 10,
    "V" => 5,
    "I" => 1
  }

  def numeralise(numeral_symbol, base_ten_equivalent)
    @result << numeral_symbol * (@remaining/base_ten_equivalent)
    @remaining %= base_ten_equivalent
  end

  numeral_list.each { |k, v| numeralise(k, v)}
  @result
end