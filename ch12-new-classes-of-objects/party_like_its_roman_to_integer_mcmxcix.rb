
 NUMERALS = {
    '4' => "IV",
    '9' => "IX",
    '40' => "XL",
    '90' => "XC",
    '400' => "CD",
    '900' => "CM",
    '1000' => "M",    
    '500' => "D",    
    '100' => "C",    
    '50' => "L",    
    '10' => "X",    
    '5' => "V",    
    '1' => "I"
  }
  
def roman_to_integer (str)
    arr = []
    str = str.upcase
    while /[a-zA-Z]/ === str
    NUMERALS.invert.each { |k, v| str.sub!(k, v) and arr << v  if str.include?(k) }
    end
    arr.map(&:to_i).reduce(:+)
end



