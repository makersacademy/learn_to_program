def old_roman_numeral num
  numeral={
    1000 => "M",
    500 => "D",
    100 => "C",
    50 => "L",
    10 => "X",
    5 => "V",
    1 => "I"
  }
  result=""
  numeral.each do |key,value|
    times = num/key
    rem = num%key
    if times > 0
      section = value*times
      result += section
    end
    num = rem
  end
  result
end
