def roman_numeral num

  c_subtract = 0
  x_subtract = 0
  i_subtract = 0

    if num >= 1000
      m = num / 1000
      remainder = num % 1000
    else
      m = 0
      remainder = num
    end

    if remainder >= 500
      d = remainder / 500
      remainder = remainder % 500
    else
      d = 0
    end

    if remainder >= 100
      c = remainder / 100
      if c == 4
        c-= 1
        c_subtract = 1
      end
      remainder = remainder % 100
    else
      c = 0
    end

    if remainder >= 50
      l = remainder / 50
      remainder = remainder % 50
    else
      l = 0
    end

    if remainder >= 10
      x = remainder / 10
      if x == 4
        x-= 1
        x_subtract = 1
      end
      remainder = remainder % 10
    else
      x = 0
    end

    if remainder >= 5
      v = remainder / 5
      remainder = remainder % 5
    else
      v = 0
    end

    i = remainder / 1
    if i == 4
      i-= 1
      i_subtract = 1
    end

  ("M"*m)+("C"*c_subtract)+("D"*d)+("C"*c)+("X"*x_subtract)+("L"*l)+("X"*x)+("I"*i_subtract)+("V"*v)+"I"*i

end


puts roman_numeral 365
puts roman_numeral 26
puts roman_numeral 120
puts roman_numeral 690
puts roman_numeral 9
puts roman_numeral 4
puts roman_numeral 8
