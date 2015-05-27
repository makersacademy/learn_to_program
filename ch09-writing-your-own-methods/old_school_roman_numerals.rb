def old_roman_numeral(supplied_num)
  @result = ""
  @remainder = supplied_num

  def check_numeral(roman, decimal)
    @result << roman * (@remainder/decimal)
    @remainder %= decimal
  end

  numerals = {
    "M" => 1000,
    "D" => 500,
    "C" => 100,
    "L" => 50,
    "X" => 10,
    "V" => 5,
    "I" => 1
  }

  numerals.each { |roman, decimal| check_numeral(roman, decimal)}
  @result
end