def old_roman_numeral(n)
  nums = {
    1000 => "M",
     500 => "D",
     100 => "C",
      50 => "L",
      10 => "X",
        5 => "V",
        1 => "I",
  }

  roman = ""
  nums.each do |value, letter|
    roman << letter*(n / value)
    n = n % value
  end

  roman
end


