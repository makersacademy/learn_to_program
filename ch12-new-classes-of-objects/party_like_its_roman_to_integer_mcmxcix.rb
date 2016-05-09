

 NUMERALS = {
    '1000' => "M",
    '900' => "CM",
    '500' => "D",
    '400' => "CD",
    '100' => "C",
    '90' => "XC",
    '50' => "L",
    '40' => "XL",
    '10' => "X",
    '9' => "IX",
    '5' => "V",
    '4' => "IV",
    '1' => "I"
  }
  
  # XXIV = 24

def roman_to_integer (str)
    arr = []
    str = str.downcase
    arr << '4' and str.gsub!("iv", "") if str.include?("iv") 
    arr << '9' and str.gsub!("ix", "") if str.include?("ix")
    arr << '40' and str.gsub!("xl", "") if str.include?("xl")
    arr << '90' and str.gsub!("xc", "") if str.include?("xc")
    arr << '400' and str.gsub!("cd", "") if str.include?("cd")
    arr << '900' and str.gsub!("cm", "") if str.include?("cm")
    str = str.upcase.split("")
    str.each { |x|  arr << NUMERALS.invert[x] }
    arr.map(&:to_i).reduce(:+)
end


roman_to_integer('mcmxcix')