#!/usr/bin/env ruby
def roman_to_integer roman


digit_vals = {'i' => 1,
              'v' => 5,
              'x' => 10,
              'l' => 50,
              'c' => 100,
              'd' => 500,
              'm' => 1000}



  num = 0
  prev = 0
  index = roman.length - 1

  while index >= 0
    digit = roman[index].downcase
    val = digit_vals[digit]
    if !val
      puts "This is not a valid roman numeral!"
      return
    end

    if val < prev
      num -= val
    else
      num += val
      prev = val
    end

    index -= 1
  end

num

end
