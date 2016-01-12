def roman_to_integer roman
  #check if roman is valid
  unless roman.upcase =~ /^M{0,4}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$/
    puts "#{roman} is not a valid roman numeral."
    return nil
  end

  num = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }

  roman_str = roman.upcase.split("")
  integer = 0
  roman_str.each_with_index do |value, index|
    if (index < roman_str.length - 1) && (num[roman_str[index]] < num[roman_str[index+1]])
      integer -= num[roman_str[index]]
    else
      integer += num[roman_str[index]]
    end
  end
  integer
end