def old_roman_numeral num
    numerals = []
  if num >= 1000
    numbers = num / 1000
    numerals.push "M" * numbers
    num -= (1000 * numbers)
  end
  
  unless num == 0
    if num >= 500
      numbers = num / 500
      numerals.push "D" * numbers
      num -= (500 * numbers)
    end
  end
  
  unless num == 0
    if num >= 100
      numbers = num / 100
      numerals.push "C" * numbers
      num -= (100 * numbers)
    end    
  end
  
  unless num == 0
    if num >= 50
      numbers = num / 50
      numerals.push "L" * numbers
      num -= (50 * numbers)
    end
  end
  
  unless num == 0
    if num >= 10
      numbers = num / 10
      numerals.push "X" * numbers
      num -= (10 * numbers)
    end
  end
  
  unless num == 0
    if num >= 5
      numbers = num / 5
      numerals.push "V" * numbers
      num -= (5 * numbers)
    end
  end
  
  unless num == 0
    if num >= 1
      numerals.push "I" * num
      num = 0
    end
  end
  numerals.join("")
end

# Old-school Roman numerals. In the early days of Roman numerals, the
# Romans didn’t bother with any of this new-fangled subtraction “IX”
# nonsense. No sir, it was straight addition, biggest to littlest—so 9 was
# written “VIIII,” and so on. Write a method that when passed an integer
# between 1 and 3000 (or so) returns a string containing the proper old-
# school Roman numeral. In other words, old_roman_numeral 4 should return
# 'IIII'. Make sure to test your method on a bunch of different numbers. Hint:
# Use the integer division and modulus methods on page 32.
# For reference, these are the values of the letters used:
# I = 1 V = 5 X = 10 L = 50
# C = 100 D = 500 M = 1000
