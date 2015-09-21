def roman_numeral num
  # your code here
  chars = { 1000 => "M", 500 => "D", 100 => "C", 50 => "L", 10 => "X", 5 => "V", 1 => "I" }
  ary = [1000, 500, 100, 50, 10, 5, 1]
  roman = ""

    i = 0
    while i < 7

      if num >= ary[i]

        if num.to_s.length == 4
          roman = roman + chars [ ary[i] ] * (num / ary[i])
          num = num % ary[i]

        elsif num.to_s.length == 3
          if num.to_s[0,1] == "9"
            roman = roman + "CM"
            num = num - 900
          elsif num.to_s[0,1] == "4"
            roman = roman + "CD"
            num = num - 400
          else
            roman = roman + chars [ ary[i] ] * (num / ary[i]) 
            num = num % ary[i]
          end

        elsif num.to_s.length == 2
          if num.to_s[0,1] == "9"
            roman = roman + "XC"
            num = num - 90
          elsif num.to_s[0,1] == "4"
            roman = roman + "XL"
            num = num - 40
          else
            roman = roman + chars [ ary[i] ] * (num / ary[i])
            num = num % ary[i]
          end

        elsif num.to_s.length == 1
          if num.to_s[0,1] == "9"
            roman = roman + "IX"
            num = num - 9
          elsif num.to_s[0,1] == "4"
            roman = roman + "IV"
            num = num - 4
          else
            roman = roman + chars [ ary[i] ] * (num / ary[i])
            num = num % ary[i]
          end
        end
      end
      i += 1
    end
    roman
end


roman_numeral(1234)
roman_numeral(1904)
roman_numeral(1954)
roman_numeral(95)
roman_numeral(54)
