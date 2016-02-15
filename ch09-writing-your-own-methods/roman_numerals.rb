def roman_numeral num
  roman = { 1 => 'I', 4 => 'IV', 5 => 'V', 9 => 'IX', 10 => 'X', 40 => 'XL', 50 => 'L', 90 => 'XC', 100 => 'C', 400 => 'CD', 500 => 'D', 900 => 'CM', 1000 => 'M' }
  out = String.new
  roman.keys.reverse.each do |key| 
      val = (num / key)
      num -= key * val
      out << roman[key] * val
  end
  out
end