def roman_to_integer(roman)
  numhash = {
    1000 => "M", 900 => "CM", 500 => "D",400 => "CD",
    100 => "C",90 => "XC", 50 => "L", 40 => "XL",
    10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I", }

  roman = roman.upcase.split("")
  regnum = 0
  roman.each_with_index do |val, index|

    if index + 1 < roman.length && numhash.has_value?(val + roman[index+1])
      regnum = regnum + numhash.key(val + roman[index+1])
    elsif numhash.has_value?(val)
      next if numhash.has_value?(roman[index-1] + val) && index - 1 >= 0
      regnum = regnum + numhash.key(val)
    else
      puts "Invalid numeral)"
    end
  end
  return regnum
end

#roman_to_integer('mcmxcix')
#roman_to_integer('CCCLXV')
#roman_to_integer('XIV')
