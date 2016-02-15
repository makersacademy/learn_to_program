def old_roman_numeral num
    str = ""
    hash = {1000 => "M", 500 => "D", 100 => "C", 50 => "L", 10 => "X", 5 => "V", 6 => "I"}
    # iterate over number divisions
    for i in [1000,500,100,50,10,5]
      str << hash.values_at(i).join * (num/i) if num/i > 0
      num -= num/i * i
    end
    str << "I" * num
end
