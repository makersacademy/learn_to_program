def roman_numeral num
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
  subtractive result
end

def subtractive num
  newRoman={
    "DCCCC" => "CM",
    "CCCC" => "CD",
    "LXXXX" => "XC",
    "XXXX" => "XL",
    "VIIII" => "IX",
    "IIII" => "IV"
  }
  newRoman.each do |long,short|
    num.gsub!(/#{long}/,long => short)
  end
  num
end
