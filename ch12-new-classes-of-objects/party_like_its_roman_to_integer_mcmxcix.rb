def roman_to_integer roman
  digit_vals = {'i' => 1, 'v' => 5, 'x' => 10, 'l' => 50, 'c' => 100, 'd' => 500, 'm' => 1000}
  total = 0
  prev = 0

  roman.reverse.each_char do |c_or_C|
    c = c_or_C.downcase
    val = digit_vals[c]

    if !val
      puts 'This is not a valid roman numeral!'
      return
    end

    if val < prev
      val *= -1
    else
      prev = val
    end

    total += val

  end

  total




#  roman = roman.downcase.split("")
#  number = 0

#  new = roman.map { |o|
#    if o == "m" then 1000
#    elsif o == "c" then 100
#    elsif o == "l" then 50
#    elsif o == "x" then 10
#    elsif o == "v" then 5
#    elsif o == "i" then 1
#    end }

#  roman.each_with_index do |val, index|
#    val.to_i
#    index.to_i
#    if val < val[index +1]
#      number += (val[index +1] - val)
#    elsif val == roman.last || val > val[index +1]
#      number += val
#    end
#  end

# new
end

