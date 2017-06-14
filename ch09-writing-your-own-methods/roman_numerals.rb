def roman_numeral num
    # your code here
    num = num.to_i
    (puts "Invalid input. Choose a number between 1 and 3000"; return) if ((num.to_i < 1) || (num.to_i > 3000))
  
    numerals = {1000=>"M", 500=>"D", 400=>"CD", 100=>"C", 90=>"XC", 50=>"L", 40=>"XL", 10=>"X", 9=>"IX", 5=>"V", 4=>"IV", 1=>"I" }
    roman = ""
  
    numerals.keys.each do |k|
        n = num/k
        if n > 0
            roman += numerals[k]*n
            num = num % k
        end
    end
    
  return roman
end