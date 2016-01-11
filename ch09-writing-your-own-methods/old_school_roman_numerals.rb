def old_roman_numeral(num)
  return "" if num == 0
  roman_nums = {
    "M" => 1000,
    "D" => 500,
    "C" => 100,
    "L" => 50,
    "X" => 10,
    "V" => 5,
    "I" => 1}

  letter,step = roman_nums.select{|key,value| value<=num}.first
  integer = (num - (num/step * step))
  letter * (num/step) + old_roman_numeral(integer)
end