def roman_to_integer roman
  n = 0
  roman_int = 0
  while n < roman.length
    case roman[n].capitalize
    when "M"
      roman_int += 1000
      n += 1
    when "D"
      roman_int += 500
      n += 1
    when "C"
      if (n + 1) < roman.length && (roman[n+1].capitalize == "M")
        roman_int += 900
        n += 2
      elsif (n + 1) < roman.length && (roman[n+1].capitalize =="D")
        roman_int += 400
        n += 2
      else
        roman_int += 100
        n += 1
      end
    when "L"
      roman_int += 50
      n += 1
    when "X"
      if (n + 1) < roman.length && (roman[n+1].capitalize == "C")
        roman_int += 90
        n += 2
      elsif (n + 1) < roman.length && (roman[n+1].capitalize == "L")
        roman_int += 40
        n += 2
      else
        roman_int += 10
        n += 1
      end
    when "V"
        roman_int += 5
        n += 1
    when "I"
      if (n + 1) < roman.length && (roman[n+1].capitalize == "X")
        roman_int += 9
        n += 2
      elsif (n + 1) < roman.length && (roman[n+1].capitalize == "V")
        roman_int += 4
        n += 2
      else
        roman_int += 1
        n += 1
      end
    else
      return puts "#{roman} is not an valid roman number"
    end
  end
  roman_int
end

puts roman_to_integer "MMXI"
puts roman_to_integer "MMCMXLIV"
puts roman_to_integer "MMCMXLIVF"
