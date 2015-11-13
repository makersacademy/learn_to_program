def old_roman_numeral num

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

  "M"*m+"D"*d+"C"*c+"L"*l+"X"*x+"V"*v+"I"*i

end


puts roman_numeral 365
puts roman_numeral 20
puts roman_numeral 120
