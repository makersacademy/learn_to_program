require_relative '../ch09-writing-your-own-methods/roman_numerals.rb'

def roman_to_integer roman
  roman_num = 0
  rm_first = 1
  roman.downcase!
  while(roman.length > 0)
    ROMAN_NUMERALS.each do |k, v|
      if roman[0..v.length - rm_first] == v.downcase
        roman_num += k
        roman.slice!(v.downcase)
        puts v
      end
    end
  end
  puts "This is a invalid string" if roman.length > 0
  return roman_num
end

#test = "CMXCIX"
#puts test[0..2 - 0]
#puts roman_to_integer("zzz")
