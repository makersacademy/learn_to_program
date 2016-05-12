$roman_reg = /^(?<thousands>M{0,3}?)
            (?<hundreds>(C{0,3}|CD|DC{0,3}|CM)?)
            (?<tens>(X{0,3}|XL|LX{0,3}|XC)?)
            (?<ones>(I{0,3}|IV|VI{0,3}|IX)?)$/x

def roman_to_integer roman
  return "Invalid input" unless match = roman.upcase.match($roman_reg)
  integer = 0
  integer += 1000 * match[:thousands].size
  integer += 100 * case match[:hundreds]
                   when /^C{0,3}$/ then match[:hundreds].size  
                   when /^CD$/ then 4
                   when /^DC{0,3}$/ then (5 + (match[:hundreds].size - 1))  
                   when /^CM$/ then 9
                   else 0
                   end 
  integer += 10 *  case match[:tens]
                   when /^X{0,3}$/ then match[:tens].size  
                   when /^XL$/ then 4
                   when /^LX{0,3}$/ then (5 + (match[:tens].size - 1))  
                   when /^XC$/ then 9
                   else 0
                   end 
  integer += 1 *  case match[:ones]
                   when /^I{0,3}$/ then match[:ones].size  
                   when /^IV$/ then 4
                   when /^VI{0,3}$/ then (5 + (match[:ones].size - 1))  
                   when /^IX$/ then 9
                   else 0
                   end 
end
