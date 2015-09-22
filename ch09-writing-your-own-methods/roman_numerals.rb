def roman_numeral num
  # your code here
  chars   = { 1000 => "M", 500 => "D", 100 => "C", 50 => "L", 10 => "X", 5 => "V", 1 => "I" }
  ary     = [1000, 500, 100, 50, 10, 5, 1]
  oddones = {900 => "CM", 400 => "CD", 90 => "XC", 40 => "XL", 9 => "IX", 4 => "IV"} 
  roman   = ""
  i = 0
  while i < 7
    if num >= ary[i]
      if (num.to_s.length == 3 || num.to_s.length == 2 || num.to_s.length == 1) && 
         (num.to_s[0,1] == "9" || num.to_s[0,1] == "4")
        roman = roman + oddones [(num.to_s[0,1] + "0"*(num.to_s.length-1)).to_i]
        num = num - (num.to_s[0,1] + "0"*(num.to_s.length-1)).to_i
      else
        roman = roman + chars [ ary[i] ] * (num / ary[i])
        num = num % ary[i]
      end
    end
    i += 1
  end
  roman
end
