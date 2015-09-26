def old_roman_numeral num
  # your code here
  chars = {1000 => "M", 500 => "D",
            100 => "C",  50 => "L",
             10 => "X",   5 => "V",
                1 => "I"}
    out = ""

    chars.each do |k, v|
      (num / k).times {out << v ; num -= k}
    end
    out
end
