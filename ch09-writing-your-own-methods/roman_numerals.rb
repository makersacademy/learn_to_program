def roman_numeral num
  left = number % 1000
  right = (number - left) / 1000

  if right > 0
    right.times {print "M"}
  end

  number = left
  left = number % 100
  right = (number - left) / 100

  if right >= 5
    print "D"
    (right - 5).times {print "C"}
  elsif (right > 0) && (right < 5)
    right.times {print "C"}
  end

  number = left
  left = number % 10
  right = (number - left) / 10

  if right >= 5
    print "L"
    (right - 5).times {print "X"}
  elsif (right > 0) && (right < 5)
    right.times {print "X"}
  end

  if (left > 0) && (left < 4)
    left.times print {"I"}
  elsif left >= 5 && left < 9
    print "V"
    (left - 5).times {print "I"}
  elsif left > 0
    case left
      when 9
        print "IX"
      when 4
        print "IV"
    end
  end
  puts roman

end
