def roman_to_integer roman
  numhash = {
    1000 => "M", 900 => "CM", 500 => "D",400 => "CD",
    100 => "C",90 => "XC", 50 => "L", 40 => "XL",
    10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I", }

  reg_num = 0

  roman = roman.upcase.split("")
  roman.each_with_index do |val, index|
    if numhash.has_value?(val)
      if numhash.has_value?(val + roman[index+1])
        reg_num + numhash.key(val + roman[index+1])
      else
        reg_num = reg_num + numhash.key(val[0])
      end
    else
    puts "Invalid Roman Numeral"
    end
  end
  print reg_num
end

roman_to_integer('mcmxcix')
#roman_to_integer('CCCLXV')
#roman_to_integer('XIV')
