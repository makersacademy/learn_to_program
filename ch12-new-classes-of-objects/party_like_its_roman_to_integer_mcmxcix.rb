def roman_to_integer roman
  roman = roman.upcase
  return "Invalid characters for Roman Numeral! Quitting..." unless roman.match(/[MDCLXVI]/)

  values = []

  #substitute letter for the following roman numeral combinations
  #cm - N, cd - F, xc - n, xl - f, ix - 9, iv- 4
  roman = roman.gsub(/CM/,'N').gsub(/CD/,'F').gsub(/XC/,'n').gsub(/XL/,'f').gsub(/IX/,'9').gsub(/IV/,'4')

  romval = {
    "M" => 1000,
    "D" => 500,
    "C" => 100,
    "L" => 50,
    "X" => 10,
    "V" => 5,
    "I" => 1,
    "N" => 900,
    "F" => 400,
    "n" => 90,
    "f" => 40,
    "9" => 9,
    "4" => 4
  }

  roman.each_char do |x|
    values << romval[x]
  end

  values.each_cons(2) do |a, b|
    return "Improperly written roman numeral! Quitting..." if b > a
  end
  values.inject(:+)
end
