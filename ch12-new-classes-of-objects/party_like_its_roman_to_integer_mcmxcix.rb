 # I = 1 V=5 X=10 L=50 C=100 D=500 M= 1000
  # IV =4 IX=9 XL=40 XC = 90 CD=400 CM = 900
def roman_to_integer roman
  return "Not a valid roman numeral" if roman.match(/[^ivxlcdmIVXLCDM]/).nil? == false
  roman_nums = {
      'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' =>100, 'D'=> 500, 'M'=> 1000
  }
  roman_ints = roman.upcase.split(//).map{|x| x = roman_nums[x]}
  integer_to_return = 0
  while roman_ints.length > 0 
    if roman_ints[0] == roman_ints.max
        integer_to_return += roman_ints[0]
        roman_ints.shift
    elsif roman_ints[0] < roman_ints[1]
        a = roman_ints[1] - roman_ints[0]
        integer_to_return += a
        roman_ints.shift(2)
    end
  end
  integer_to_return
end