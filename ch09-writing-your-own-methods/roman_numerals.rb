ROMAN_NUMERALS = {1000 => "M", 900 => "CM", 500 => "D", 400 => "CD",
                  100 => "C", 90 => "XC", 50 => "L", 40 => "XL",
                  10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I"}

def roman_numeral num
  roman = ''
  ROMAN_NUMERALS.each do |k,v|
    (num / k).times do
      roman += v; num = num - k
    end
  end
  return roman
end

#puts roman_numeral 4
