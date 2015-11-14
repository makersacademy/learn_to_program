def old_roman_numeral num

    if num >= 1000
      emmes = num / 1000
      remainder = num - emmes*1000
    else
      emmes = 0
      remainder = num
    end

    if remainder >= 500
      ds = remainder / 500
      remainder = remainder - ds*500
    else
      ds = 0
    end

    if remainder >= 100
      cs = remainder / 100
      remainder = remainder - cs*100
    else
      cs = 0
    end

    if remainder >= 50
      elles = remainder / 50
      remainder = remainder - elles*50
    else
      elles = 0
    end

    if remainder >= 10
      xes = remainder / 10
      remainder = remainder - xes*10
    else
      xes = 0
    end

    if remainder >= 5
      vs = remainder / 5
      remainder = remainder - vs*5
    else
      vs = 0
    end

    is = remainder / 1

  "M"*emmes+"D"*ds+"C"*cs+"L"*elles+"X"*xes+"V"*vs+"I"*is

end

# puts old_roman_numeral 4
# puts old_roman_numeral 365
# puts old_roman_numeral 20
# puts old_roman_numeral 120
