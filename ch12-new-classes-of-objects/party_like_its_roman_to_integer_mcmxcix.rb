def roman_to_integer roman
  number = 0
  roman.upcase!

  romans = {
          "M"  => 1000,
          "CM" => 900,
          "D"  => 500,
          "CD" => 400,
          "C"  => 100,
          "XC" => 90,
          "L"  => 50,
          "XL" => 40,
          "X"  => 10,
          "IX" => 9,
          "V"  => 5,
          "IV" => 4,
          "I"  => 1
          }

  i = 0

  while i < roman.length
    if romans.key?(roman[i,2])
      number += romans[roman[i,2]]
      i += 2
    else
      number += romans[roman[i]]
      i += 1
    end
  end

  number
end
