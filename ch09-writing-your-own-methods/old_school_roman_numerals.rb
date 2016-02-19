def old_roman_numeral num
  roman = { 1 => 'I', 5 => 'V', 10 => 'X', 50 => 'L', 100 => 'C', 500 => 'D', 1000 => 'M' }
  out = String.new
  roman.keys.reverse.each do |key| 
      val = (num / key)
      num -= key * val
      out << roman[key] * val
  end
  out
end