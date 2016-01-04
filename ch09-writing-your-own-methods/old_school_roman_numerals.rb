def old_roman_numeral num

  hash = { 1000 => "M",
           500 => "D",
           100 => "C",
           50 => "L",
           10 => "X",
           5 => "V",
           1 => "I" }

  str = ""
  hash.each do |key, value|
    while num >= key
      str << value
      num -= key
    end
  end
  str
end
