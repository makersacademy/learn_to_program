=begin
Split the string into characters
Convert each character into the value it represents
Start from the right - the lowest value numeral
Keep a running total, and a record of the maximum numeral encountered so far
Take characters one by one:
If character is greater than the maximum, add it to the running total and update the maximum
If character is less than the maximum, subtract it from the running total
=end

def roman_to_integer roman
  numeral_val = {'I' => 1,
                 'V' => 5,
                 'X' => 10,
                 'L' => 50,
                 'C' => 100,
                 'D' => 500,
                 'M' => 1000
               }

  sum = 0
  prev = 0
  index = roman.length - 1

  while index >=0 do
    char = roman[index].upcase
    char_val = numeral_val[char]

    if char_val >= prev
      sum += char_val
      prev = char_val
    else
     sum -= char_val
    end
    index -= 1
  end

  return sum
end

=begin
puts ( roman_to_integer("iv") == 4) ? true.to_s : false.to_s
puts ( roman_to_integer("vi") == 6) ? true.to_s : false.to_s
puts ( roman_to_integer("ix") == 9) ? true.to_s : false.to_s
puts ( roman_to_integer("xiv") == 14) ? true.to_s : false.to_s
puts ( roman_to_integer("xl") == 40) ? true.to_s : false.to_s
puts ( roman_to_integer("xlix") == 49) ? true.to_s : false.to_s
puts ( roman_to_integer("cl") == 150) ? true.to_s : false.to_s
puts ( roman_to_integer("cdxcix") == 499) ? true.to_s : false.to_s
puts ( roman_to_integer("cmxcix") == 999) ? true.to_s : false.to_s
puts ( roman_to_integer("mcmxcix") == 1999) ? true.to_s : false.to_s
=end

