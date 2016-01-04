
def roman_to_integer roman
  roman.upcase!
   
  symbol = { 'I'=>1, 'V'=>5, 'X'=>10, 'L'=>50, 'C'=>100, 'D'=>500, 'M'=>1000,
            'a'=>4, 'b'=>9, 'c'=>40, 'd'=>90, 'e'=>400, 'f'=>900}
            
  roman.each_char {|y| return "INVALID" if symbol[y] == nil}       
  
  roman = roman.gsub('IV', 'a')
  roman = roman.gsub('IX', 'b')
  roman = roman.gsub('XL', 'c')
  roman = roman.gsub('XC', 'd')
  roman = roman.gsub('CD', 'e')
  roman = roman.gsub('CM', 'f')
  
  roman_array = roman.split('')
  total = 0
  roman_array.each {|x|
    total = total + symbol[x]
  }
  total
end

p roman_to_integer 'MCMLIV'