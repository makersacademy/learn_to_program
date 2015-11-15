def roman_numeral num
    # M (1000)
      if num >= 1000
        multiplier = num / 1000
        emmes = "M"*multiplier
        remainder = num - multiplier*1000
      else
        emmes = ""
        remainder = num
      end
    # D (500)
      if remainder >= 500
        multiplier = remainder / 500
        ds = "D"*multiplier
        remainder = num - multiplier*1000
      else
        ds = ""
      end
      # C (100)
      if remainder >= 100
        multiplier = remainder / 100
        cs = "C"*multiplier
        remainder = remainder - multiplier*100
      else
        cs = ""
      end
      # L (50)
      if remainder >= 50
        multiplier = remainder / 50
        elles = "L"*multiplier
        remainder = remainder - multiplier*50
      else
        elles = ""
      end
      # X (10)
      if remainder >= 10
        multiplier = remainder / 10
        xes = "X"*multiplier
        remainder = remainder - multiplier*10
      else
        xes = ""
      end
      # V (5)
      if remainder >= 5
        multiplier = remainder / 5
        vs = "V"*multiplier
        remainder = remainder - multiplier*5
      else
        vs = ""
      end
      # I (1)
      multiplier = remainder / 1
      if multiplier == 4
        vs = "I"+vs
        is = ""
      elsif multiplier == 9
        


      is = "I"*multiplier
      if

      emmes+ds+cs+elles+xes+vs+is
  end


puts "369 is #{roman_numeral 369}"
puts "120 is #{roman_numeral 120}"
puts "34 is #{roman_numeral 34}"
puts "12 is #{roman_numeral 12}"
puts "67 is #{roman_numeral 67}"
