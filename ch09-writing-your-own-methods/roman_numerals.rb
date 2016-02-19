ROMAN = {
  "M"   => 1000,
  "CM"  => 900,
  "D"   => 500,
  "CD"  => 400,
  "C"   => 100,
  "XC"  => 90,
  "L"   => 50,
  "XL"  => 40,
  "X"   => 10,
  "IX"  => 9,
  "V"   => 5,
  "IV"  => 4,
  "I"   =>1
}

def roman_numeral num
  roman_number = ""
  ROMAN.each do |roman, decimal|
    multiplier = num / decimal
    roman_number += roman * (multiplier)
    num -= decimal*(multiplier)
  end
  roman_number
end