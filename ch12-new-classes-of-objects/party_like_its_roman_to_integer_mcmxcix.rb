def roman_to_integer roman
  numerals = {1000 => "M",
              500 => "D",
              100 => "C",
              50 => "L",
              10 => "X",
              5 => "V",
              1 => "I"}
  roman_arr = roman.upcase.split("")

  roman_arr.map!{ |num| numerals.key(num) }

  puts roman_arr
  sum = 0
  n = 0
  while n < roman_arr.length
    if n == roman_arr.length - 1
      sum += roman_arr[n]
      n += 1
    elsif roman_arr[n] < roman_arr[n+1]
      sum += (roman_arr[n+1] - roman_arr[n])
      n += 2
    else
      sum += roman_arr[n]
      n += 1
    end
  end
  return sum
end



