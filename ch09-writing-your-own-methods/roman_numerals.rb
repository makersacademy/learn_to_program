def roman_numeral(n)
  nums = {
    1000 => "M",
     900 => "CM",
     500 => "D",
     400 => "CD",
     100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
        9 => "IX",
        5 => "V",
        4 => "IV",
        1 => "I",
  }

  roman = ""
  nums.each do |value, letter|
    roman << letter*(n / value)
    n = n % value
  end

  roman
end

